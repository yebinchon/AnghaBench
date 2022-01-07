
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuid_t ;


 int find_level (int *,unsigned int) ;
 int intr_disconnect_level (int ,int) ;

__attribute__((used)) static inline void disable_bridge_irq(unsigned int irq)
{
 cpuid_t cpu;
 int swlevel;

 swlevel = find_level(&cpu, irq);
 intr_disconnect_level(cpu, swlevel);
}
