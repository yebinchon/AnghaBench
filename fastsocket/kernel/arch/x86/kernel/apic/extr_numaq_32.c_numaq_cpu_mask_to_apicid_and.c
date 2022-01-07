
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;



__attribute__((used)) static inline unsigned int
numaq_cpu_mask_to_apicid_and(const struct cpumask *cpumask,
        const struct cpumask *andmask)
{
 return 0x0F;
}
