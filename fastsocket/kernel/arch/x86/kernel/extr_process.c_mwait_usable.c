
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {scalar_t__ cpuid_level; } ;


 int MWAIT_ECX_EXTENDED_INFO ;
 int MWAIT_EDX_C1 ;
 scalar_t__ MWAIT_INFO ;
 int cpuid (scalar_t__,int*,int*,int*,int*) ;
 scalar_t__ force_mwait ;

int mwait_usable(const struct cpuinfo_x86 *c)
{
 u32 eax, ebx, ecx, edx;

 if (force_mwait)
  return 1;

 if (c->cpuid_level < MWAIT_INFO)
  return 0;

 cpuid(MWAIT_INFO, &eax, &ebx, &ecx, &edx);

 if (!(ecx & MWAIT_ECX_EXTENDED_INFO))
  return 1;





 return (edx & MWAIT_EDX_C1);
}
