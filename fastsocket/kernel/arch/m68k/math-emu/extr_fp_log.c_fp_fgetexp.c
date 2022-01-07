
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {scalar_t__ exp; } ;


 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_conv_long2ext (struct fp_ext*,int) ;
 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_normalize_ext (struct fp_ext*) ;
 int fp_set_nan (struct fp_ext*) ;

struct fp_ext *
fp_fgetexp(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fgetexp\n");

 fp_monadic_check(dest, src);

 if (IS_INF(dest)) {
  fp_set_nan(dest);
  return dest;
 }
 if (IS_ZERO(dest))
  return dest;

 fp_conv_long2ext(dest, (int)dest->exp - 0x3FFF);

 fp_normalize_ext(dest);

 return dest;
}
