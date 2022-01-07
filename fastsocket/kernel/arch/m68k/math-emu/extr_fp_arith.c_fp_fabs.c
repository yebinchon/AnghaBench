
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {scalar_t__ sign; } ;


 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;

struct fp_ext *
fp_fabs(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fabs\n");

 fp_monadic_check(dest, src);

 dest->sign = 0;

 return dest;
}
