
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;


 int FPSR_EXC_UNFL ;
 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_denormalize (struct fp_ext*,int) ;
 int fp_dyadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_mul64 (int,int,int,int) ;
 int fp_set_nan (struct fp_ext*) ;
 int fp_set_ovrflw (struct fp_ext*) ;
 int fp_set_sr (int ) ;

struct fp_ext *
fp_fsglmul(struct fp_ext *dest, struct fp_ext *src)
{
 int exp;

 dprint(PINSTR, "fsglmul\n");

 fp_dyadic_check(dest, src);


 dest->sign = src->sign ^ dest->sign;


 if (IS_INF(dest)) {
  if (IS_ZERO(src))
   fp_set_nan(dest);
  return dest;
 }
 if (IS_INF(src)) {
  if (IS_ZERO(dest))
   fp_set_nan(dest);
  else
   fp_copy_ext(dest, src);
  return dest;
 }




 if (IS_ZERO(dest) || IS_ZERO(src)) {
  dest->exp = 0;
  dest->mant.m64 = 0;
  dest->lowmant = 0;

  return dest;
 }

 exp = dest->exp + src->exp - 0x3ffe;


 fp_mul64(dest->mant.m32[0], dest->mant.m32[1],
   dest->mant.m32[0] & 0xffffff00,
   src->mant.m32[0] & 0xffffff00);

 if (exp >= 0x7fff) {
  fp_set_ovrflw(dest);
  return dest;
 }
 dest->exp = exp;
 if (exp < 0) {
  fp_set_sr(FPSR_EXC_UNFL);
  fp_denormalize(dest, -exp);
 }

 return dest;
}
