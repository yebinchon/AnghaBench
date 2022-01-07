
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_PLATFORM_INFO ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static int intel_pstate_min_pstate(void)
{
 u64 value;
 rdmsrl(MSR_PLATFORM_INFO, value);
 return (value >> 40) & 0xFF;
}
