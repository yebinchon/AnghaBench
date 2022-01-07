
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IBS_CAPS_AVAIL ;
 int IBS_CAPS_DEFAULT ;
 unsigned int IBS_CPUID_FEATURES ;
 int X86_FEATURE_IBS ;
 int boot_cpu_has (int ) ;
 void* cpuid_eax (unsigned int) ;

__attribute__((used)) static u32 get_ibs_caps(void)
{
 u32 ibs_caps;
 unsigned int max_level;

 if (!boot_cpu_has(X86_FEATURE_IBS))
  return 0;


 max_level = cpuid_eax(0x80000000);
 if (max_level < IBS_CPUID_FEATURES)
  return IBS_CAPS_DEFAULT;

 ibs_caps = cpuid_eax(IBS_CPUID_FEATURES);
 if (!(ibs_caps & IBS_CAPS_AVAIL))

  return IBS_CAPS_DEFAULT;

 return ibs_caps;
}
