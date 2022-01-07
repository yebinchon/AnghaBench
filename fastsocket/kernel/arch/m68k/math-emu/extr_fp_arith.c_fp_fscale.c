
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fp_ext {int exp; } ;
struct TYPE_2__ {int rnd; } ;


 int FPCR_ROUND_RZ ;
 TYPE_1__* FPDATA ;
 int FPSR_EXC_UNFL ;
 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_conv_ext2long (struct fp_ext*) ;
 int fp_denormalize (struct fp_ext*,int) ;
 int fp_dyadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_set_nan (struct fp_ext*) ;
 int fp_set_ovrflw (struct fp_ext*) ;
 int fp_set_sr (int ) ;

struct fp_ext *
fp_fscale(struct fp_ext *dest, struct fp_ext *src)
{
 int scale, oldround;

 dprint(PINSTR, "fscale\n");

 fp_dyadic_check(dest, src);


 if (IS_INF(src)) {
  fp_set_nan(dest);
  return dest;
 }
 if (IS_INF(dest))
  return dest;


 if (IS_ZERO(src) || IS_ZERO(dest))
  return dest;


 if (src->exp >= 0x400c) {
  fp_set_ovrflw(dest);
  return dest;
 }


 oldround = FPDATA->rnd;
 FPDATA->rnd = FPCR_ROUND_RZ;
 scale = fp_conv_ext2long(src);
 FPDATA->rnd = oldround;


 scale += dest->exp;

 if (scale >= 0x7fff) {
  fp_set_ovrflw(dest);
 } else if (scale <= 0) {
  fp_set_sr(FPSR_EXC_UNFL);
  fp_denormalize(dest, -scale);
 } else
  dest->exp = scale;

 return dest;
}
