#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gf ;
typedef  int dtype ;

/* Variables and functions */
 int A0 ; 
 int B0 ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int KK ; 
 int Ldec ; 
 int NN ; 
 int PRIM ; 
 int FUNC3 (int,int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(dtype Alpha_to[NN + 1], dtype Index_of[NN + 1],
            gf bb[NN - KK + 1], gf eras_val[NN-KK], int eras_pos[NN-KK],
            int no_eras)
{
  int deg_lambda, el, deg_omega;
  int i, j, r,k;
  gf u,q,tmp,num1,num2,den,discr_r;
  gf lambda[NN-KK + 1], s[NN-KK + 1];	/* Err+Eras Locator poly
					 * and syndrome poly */
  gf b[NN-KK + 1], t[NN-KK + 1], omega[NN-KK + 1];
  gf root[NN-KK], reg[NN-KK + 1], loc[NN-KK];
  int syn_error, count;

  syn_error = 0;
  for(i=0;i<NN-KK;i++)
      syn_error |= bb[i];

  if (!syn_error) {
    /* if remainder is zero, data[] is a codeword and there are no
     * errors to correct. So return data[] unmodified
     */
    count = 0;
    goto finish;
  }

  for(i=1;i<=NN-KK;i++){
    s[i] = bb[0];
  }
  for(j=1;j<NN-KK;j++){
    if(bb[j] == 0)
      continue;
    tmp = Index_of[bb[j]];

    for(i=1;i<=NN-KK;i++)
      s[i] ^= Alpha_to[FUNC4(tmp + (B0+i-1)*PRIM*j)];
  }

  /* undo the feedback register implicit multiplication and convert
     syndromes to index form */

  for(i=1;i<=NN-KK;i++) {
      tmp = Index_of[s[i]];
      if (tmp != A0)
          tmp = FUNC4(tmp + 2 * KK * (B0+i-1)*PRIM);
      s[i] = tmp;
  }

  FUNC0(&lambda[1],NN-KK);
  lambda[0] = 1;

  if (no_eras > 0) {
    /* Init lambda to be the erasure locator polynomial */
    lambda[1] = Alpha_to[FUNC4(PRIM * eras_pos[0])];
    for (i = 1; i < no_eras; i++) {
      u = FUNC4(PRIM*eras_pos[i]);
      for (j = i+1; j > 0; j--) {
	tmp = Index_of[lambda[j - 1]];
	if(tmp != A0)
	  lambda[j] ^= Alpha_to[FUNC4(u + tmp)];
      }
    }
#if DEBUG_ECC >= 1
    /* Test code that verifies the erasure locator polynomial just constructed
       Needed only for decoder debugging. */

    /* find roots of the erasure location polynomial */
    for(i=1;i<=no_eras;i++)
      reg[i] = Index_of[lambda[i]];
    count = 0;
    for (i = 1,k=NN-Ldec; i <= NN; i++,k = modnn(NN+k-Ldec)) {
      q = 1;
      for (j = 1; j <= no_eras; j++)
	if (reg[j] != A0) {
	  reg[j] = modnn(reg[j] + j);
	  q ^= Alpha_to[reg[j]];
	}
      if (q != 0)
	continue;
      /* store root and error location number indices */
      root[count] = i;
      loc[count] = k;
      count++;
    }
    if (count != no_eras) {
      printf("\n lambda(x) is WRONG\n");
      count = -1;
      goto finish;
    }
#if DEBUG_ECC >= 2
    printf("\n Erasure positions as determined by roots of Eras Loc Poly:\n");
    for (i = 0; i < count; i++)
      printf("%d ", loc[i]);
    printf("\n");
#endif
#endif
  }
  for(i=0;i<NN-KK+1;i++)
    b[i] = Index_of[lambda[i]];

  /*
   * Begin Berlekamp-Massey algorithm to determine error+erasure
   * locator polynomial
   */
  r = no_eras;
  el = no_eras;
  while (++r <= NN-KK) {	/* r is the step number */
    /* Compute discrepancy at the r-th step in poly-form */
    discr_r = 0;
    for (i = 0; i < r; i++){
      if ((lambda[i] != 0) && (s[r - i] != A0)) {
	discr_r ^= Alpha_to[FUNC4(Index_of[lambda[i]] + s[r - i])];
      }
    }
    discr_r = Index_of[discr_r];	/* Index form */
    if (discr_r == A0) {
      /* 2 lines below: B(x) <-- x*B(x) */
      FUNC2(&b[1],b,NN-KK);
      b[0] = A0;
    } else {
      /* 7 lines below: T(x) <-- lambda(x) - discr_r*x*b(x) */
      t[0] = lambda[0];
      for (i = 0 ; i < NN-KK; i++) {
	if(b[i] != A0)
	  t[i+1] = lambda[i+1] ^ Alpha_to[FUNC4(discr_r + b[i])];
	else
	  t[i+1] = lambda[i+1];
      }
      if (2 * el <= r + no_eras - 1) {
	el = r + no_eras - el;
	/*
	 * 2 lines below: B(x) <-- inv(discr_r) *
	 * lambda(x)
	 */
	for (i = 0; i <= NN-KK; i++)
	  b[i] = (lambda[i] == 0) ? A0 : FUNC4(Index_of[lambda[i]] - discr_r + NN);
      } else {
	/* 2 lines below: B(x) <-- x*B(x) */
	FUNC2(&b[1],b,NN-KK);
	b[0] = A0;
      }
      FUNC1(lambda,t,NN-KK+1);
    }
  }

  /* Convert lambda to index form and compute deg(lambda(x)) */
  deg_lambda = 0;
  for(i=0;i<NN-KK+1;i++){
    lambda[i] = Index_of[lambda[i]];
    if(lambda[i] != A0)
      deg_lambda = i;
  }
  /*
   * Find roots of the error+erasure locator polynomial by Chien
   * Search
   */
  FUNC1(&reg[1],&lambda[1],NN-KK);
  count = 0;		/* Number of roots of lambda(x) */
  for (i = 1,k=NN-Ldec; i <= NN; i++,k = FUNC4(NN+k-Ldec)) {
    q = 1;
    for (j = deg_lambda; j > 0; j--){
      if (reg[j] != A0) {
	reg[j] = FUNC4(reg[j] + j);
	q ^= Alpha_to[reg[j]];
      }
    }
    if (q != 0)
      continue;
    /* store root (index-form) and error location number */
    root[count] = i;
    loc[count] = k;
    /* If we've already found max possible roots,
     * abort the search to save time
     */
    if(++count == deg_lambda)
      break;
  }
  if (deg_lambda != count) {
    /*
     * deg(lambda) unequal to number of roots => uncorrectable
     * error detected
     */
    count = -1;
    goto finish;
  }
  /*
   * Compute err+eras evaluator poly omega(x) = s(x)*lambda(x) (modulo
   * x**(NN-KK)). in index form. Also find deg(omega).
   */
  deg_omega = 0;
  for (i = 0; i < NN-KK;i++){
    tmp = 0;
    j = (deg_lambda < i) ? deg_lambda : i;
    for(;j >= 0; j--){
      if ((s[i + 1 - j] != A0) && (lambda[j] != A0))
	tmp ^= Alpha_to[FUNC4(s[i + 1 - j] + lambda[j])];
    }
    if(tmp != 0)
      deg_omega = i;
    omega[i] = Index_of[tmp];
  }
  omega[NN-KK] = A0;

  /*
   * Compute error values in poly-form. num1 = omega(inv(X(l))), num2 =
   * inv(X(l))**(B0-1) and den = lambda_pr(inv(X(l))) all in poly-form
   */
  for (j = count-1; j >=0; j--) {
    num1 = 0;
    for (i = deg_omega; i >= 0; i--) {
      if (omega[i] != A0)
	num1  ^= Alpha_to[FUNC4(omega[i] + i * root[j])];
    }
    num2 = Alpha_to[FUNC4(root[j] * (B0 - 1) + NN)];
    den = 0;

    /* lambda[i+1] for i even is the formal derivative lambda_pr of lambda[i] */
    for (i = FUNC3(deg_lambda,NN-KK-1) & ~1; i >= 0; i -=2) {
      if(lambda[i+1] != A0)
	den ^= Alpha_to[FUNC4(lambda[i+1] + i * root[j])];
    }
    if (den == 0) {
#if DEBUG_ECC >= 1
      printf("\n ERROR: denominator = 0\n");
#endif
      /* Convert to dual- basis */
      count = -1;
      goto finish;
    }
    /* Apply error to data */
    if (num1 != 0) {
        eras_val[j] = Alpha_to[FUNC4(Index_of[num1] + Index_of[num2] + NN - Index_of[den])];
    } else {
        eras_val[j] = 0;
    }
  }
 finish:
  for(i=0;i<count;i++)
      eras_pos[i] = loc[i];
  return count;
}