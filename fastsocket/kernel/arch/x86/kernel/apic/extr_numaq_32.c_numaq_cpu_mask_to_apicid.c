
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;



__attribute__((used)) static unsigned int numaq_cpu_mask_to_apicid(const struct cpumask *cpumask)
{
 return 0x0F;
}
