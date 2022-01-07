
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_MCA ;
 int X86_FEATURE_MCE ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 scalar_t__ mce_disabled ;

int mce_available(struct cpuinfo_x86 *c)
{
 if (mce_disabled)
  return 0;
 return cpu_has(c, X86_FEATURE_MCE) && cpu_has(c, X86_FEATURE_MCA);
}
