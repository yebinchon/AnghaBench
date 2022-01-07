
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gf ;
typedef int dtype ;


 int A0 ;
 int B0 ;
 int CLEAR (int*,int) ;
 int COPY (int*,int*,int) ;
 int COPYDOWN (int*,int*,int) ;
 int KK ;
 int Ldec ;
 int NN ;
 int PRIM ;
 int min (int,int) ;
 size_t modnn (int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
eras_dec_rs(dtype Alpha_to[NN + 1], dtype Index_of[NN + 1],
            gf bb[NN - KK + 1], gf eras_val[NN-KK], int eras_pos[NN-KK],
            int no_eras)
{
  int deg_lambda, el, deg_omega;
  int i, j, r,k;
  gf u,q,tmp,num1,num2,den,discr_r;
  gf lambda[NN-KK + 1], s[NN-KK + 1];

  gf b[NN-KK + 1], t[NN-KK + 1], omega[NN-KK + 1];
  gf root[NN-KK], reg[NN-KK + 1], loc[NN-KK];
  int syn_error, count;

  syn_error = 0;
  for(i=0;i<NN-KK;i++)
      syn_error |= bb[i];

  if (!syn_error) {



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
      s[i] ^= Alpha_to[modnn(tmp + (B0+i-1)*PRIM*j)];
  }




  for(i=1;i<=NN-KK;i++) {
      tmp = Index_of[s[i]];
      if (tmp != A0)
          tmp = modnn(tmp + 2 * KK * (B0+i-1)*PRIM);
      s[i] = tmp;
  }

  CLEAR(&lambda[1],NN-KK);
  lambda[0] = 1;

  if (no_eras > 0) {

    lambda[1] = Alpha_to[modnn(PRIM * eras_pos[0])];
    for (i = 1; i < no_eras; i++) {
      u = modnn(PRIM*eras_pos[i]);
      for (j = i+1; j > 0; j--) {
 tmp = Index_of[lambda[j - 1]];
 if(tmp != A0)
   lambda[j] ^= Alpha_to[modnn(u + tmp)];
      }
    }
  }
  for(i=0;i<NN-KK+1;i++)
    b[i] = Index_of[lambda[i]];





  r = no_eras;
  el = no_eras;
  while (++r <= NN-KK) {

    discr_r = 0;
    for (i = 0; i < r; i++){
      if ((lambda[i] != 0) && (s[r - i] != A0)) {
 discr_r ^= Alpha_to[modnn(Index_of[lambda[i]] + s[r - i])];
      }
    }
    discr_r = Index_of[discr_r];
    if (discr_r == A0) {

      COPYDOWN(&b[1],b,NN-KK);
      b[0] = A0;
    } else {

      t[0] = lambda[0];
      for (i = 0 ; i < NN-KK; i++) {
 if(b[i] != A0)
   t[i+1] = lambda[i+1] ^ Alpha_to[modnn(discr_r + b[i])];
 else
   t[i+1] = lambda[i+1];
      }
      if (2 * el <= r + no_eras - 1) {
 el = r + no_eras - el;




 for (i = 0; i <= NN-KK; i++)
   b[i] = (lambda[i] == 0) ? A0 : modnn(Index_of[lambda[i]] - discr_r + NN);
      } else {

 COPYDOWN(&b[1],b,NN-KK);
 b[0] = A0;
      }
      COPY(lambda,t,NN-KK+1);
    }
  }


  deg_lambda = 0;
  for(i=0;i<NN-KK+1;i++){
    lambda[i] = Index_of[lambda[i]];
    if(lambda[i] != A0)
      deg_lambda = i;
  }




  COPY(&reg[1],&lambda[1],NN-KK);
  count = 0;
  for (i = 1,k=NN-Ldec; i <= NN; i++,k = modnn(NN+k-Ldec)) {
    q = 1;
    for (j = deg_lambda; j > 0; j--){
      if (reg[j] != A0) {
 reg[j] = modnn(reg[j] + j);
 q ^= Alpha_to[reg[j]];
      }
    }
    if (q != 0)
      continue;

    root[count] = i;
    loc[count] = k;



    if(++count == deg_lambda)
      break;
  }
  if (deg_lambda != count) {




    count = -1;
    goto finish;
  }




  deg_omega = 0;
  for (i = 0; i < NN-KK;i++){
    tmp = 0;
    j = (deg_lambda < i) ? deg_lambda : i;
    for(;j >= 0; j--){
      if ((s[i + 1 - j] != A0) && (lambda[j] != A0))
 tmp ^= Alpha_to[modnn(s[i + 1 - j] + lambda[j])];
    }
    if(tmp != 0)
      deg_omega = i;
    omega[i] = Index_of[tmp];
  }
  omega[NN-KK] = A0;





  for (j = count-1; j >=0; j--) {
    num1 = 0;
    for (i = deg_omega; i >= 0; i--) {
      if (omega[i] != A0)
 num1 ^= Alpha_to[modnn(omega[i] + i * root[j])];
    }
    num2 = Alpha_to[modnn(root[j] * (B0 - 1) + NN)];
    den = 0;


    for (i = min(deg_lambda,NN-KK-1) & ~1; i >= 0; i -=2) {
      if(lambda[i+1] != A0)
 den ^= Alpha_to[modnn(lambda[i+1] + i * root[j])];
    }
    if (den == 0) {




      count = -1;
      goto finish;
    }

    if (num1 != 0) {
        eras_val[j] = Alpha_to[modnn(Index_of[num1] + Index_of[num2] + NN - Index_of[den])];
    } else {
        eras_val[j] = 0;
    }
  }
 finish:
  for(i=0;i<count;i++)
      eras_pos[i] = loc[i];
  return count;
}
