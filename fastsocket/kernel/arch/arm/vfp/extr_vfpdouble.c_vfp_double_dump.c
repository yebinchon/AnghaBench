
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfp_double {scalar_t__ sign; int significand; int exponent; } ;


 int pr_debug (char*,char const*,int,int ,int ) ;

__attribute__((used)) static void vfp_double_dump(const char *str, struct vfp_double *d)
{
 pr_debug("VFP: %s: sign=%d exponent=%d significand=%016llx\n",
   str, d->sign != 0, d->exponent, d->significand);
}
