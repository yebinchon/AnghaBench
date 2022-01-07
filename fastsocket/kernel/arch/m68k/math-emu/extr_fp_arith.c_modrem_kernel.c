
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m64; } ;
struct fp_ext {int sign; TYPE_1__ mant; } ;


 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_dyadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_fdiv (struct fp_ext*,struct fp_ext*) ;
 int fp_fmul (struct fp_ext*,struct fp_ext*) ;
 int fp_fsub (struct fp_ext*,struct fp_ext*) ;
 int fp_roundint (struct fp_ext*,int) ;
 int fp_set_nan (struct fp_ext*) ;
 int fp_set_quotient (int) ;

__attribute__((used)) static struct fp_ext *
modrem_kernel(struct fp_ext *dest, struct fp_ext *src, int mode)
{
 struct fp_ext tmp;

 fp_dyadic_check(dest, src);


 if (IS_INF(dest) || IS_ZERO(src)) {
  fp_set_nan(dest);
  return dest;
 }
 if (IS_ZERO(dest) || IS_INF(src))
  return dest;


 fp_copy_ext(&tmp, dest);
 fp_fdiv(&tmp, src);
 fp_roundint(&tmp, mode);
 fp_fmul(&tmp, src);
 fp_fsub(dest, &tmp);


 fp_set_quotient((dest->mant.m64 & 0x7f) | (dest->sign << 7));
 return dest;
}
