m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %temp=theta;
    %theta(1)=temp(1)-alpha*sum( X*temp-y)*(1/m);
    %theta(2)=temp(2)-alpha*sum( (X*temp-y).*X(:,2))*(1/m);
    
    theta=theta - alpha*X'*(X*theta-y)  *1/m;
    






    % ============================================================

    % Save the cost J in every iteration    ,so boring 
    J_history(iter) = computeCost(X, y, theta);

end

end
