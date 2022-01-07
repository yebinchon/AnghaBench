
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuid_to_nasid (int) ;

__attribute__((used)) static int
xp_cpu_to_nasid_sn2(int cpuid)
{
 return cpuid_to_nasid(cpuid);
}
