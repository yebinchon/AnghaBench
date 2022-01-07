
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int intel_init_cmci () ;
 int intel_init_thermal (struct cpuinfo_x86*) ;

void mce_intel_feature_init(struct cpuinfo_x86 *c)
{
 intel_init_thermal(c);
 intel_init_cmci();
}
