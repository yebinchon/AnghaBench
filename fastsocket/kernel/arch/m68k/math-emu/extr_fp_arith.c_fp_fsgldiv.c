
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;


 int FPSR_EXC_DZ ;
 int FPSR_EXC_UNFL ;
 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_denormalize (struct fp_ext*,int) ;
 int fp_div64 (unsigned long,unsigned long,int,int ,int) ;
 int fp_dyadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_set_nan (struct fp_ext*) ;
 int fp_set_ovrflw (struct fp_ext*) ;
 int fp_set_sr (int ) ;
 int fp_sub64 (TYPE_1__,TYPE_1__) ;

struct fp_ext *
fp_fsgldiv(struct fp_ext *dest, struct fp_ext *src)
{
 int exp;
 unsigned long quot, rem;

 dprint(PINSTR, "fsgldiv\n");

 fp_dyadic_check(dest, src);


 dest->sign = src->sign ^ dest->sign;


 if (IS_INF(dest)) {

  if (IS_INF(src))
   fp_set_nan(dest);

  return dest;
 }
 if (IS_INF(src)) {

  dest->exp = 0;
  dest->mant.m64 = 0;
  dest->lowmant = 0;

  return dest;
 }


 if (IS_ZERO(dest)) {

  if (IS_ZERO(src))
   fp_set_nan(dest);

  return dest;
 }
 if (IS_ZERO(src)) {

  fp_set_sr(FPSR_EXC_DZ);
  dest->exp = 0x7fff;
  dest->mant.m64 = 0;

  return dest;
 }

 exp = dest->exp - src->exp + 0x3fff;

 dest->mant.m32[0] &= 0xffffff00;
 src->mant.m32[0] &= 0xffffff00;


 if (dest->mant.m32[0] >= src->mant.m32[0]) {
  fp_sub64(dest->mant, src->mant);
  fp_div64(quot, rem, dest->mant.m32[0], 0, src->mant.m32[0]);
  dest->mant.m32[0] = 0x80000000 | (quot >> 1);
  dest->mant.m32[1] = (quot & 1) | rem;
 } else {
  fp_div64(quot, rem, dest->mant.m32[0], 0, src->mant.m32[0]);
  dest->mant.m32[0] = quot;
  dest->mant.m32[1] = rem;
  exp--;
 }

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
