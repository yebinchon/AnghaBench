
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int dummy; } ;


 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;
 int uprint (char*) ;

struct fp_ext *
fp_fetoxm1(struct fp_ext *dest, struct fp_ext *src)
{
 uprint("fetoxm1\n");

 fp_monadic_check(dest, src);

 if (IS_ZERO(dest))
  return dest;

 return dest;
}
