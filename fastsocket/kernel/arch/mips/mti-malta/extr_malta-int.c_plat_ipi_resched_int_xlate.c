
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIC_RESCHED_INT (unsigned int) ;

unsigned int plat_ipi_resched_int_xlate(unsigned int cpu)
{
 return GIC_RESCHED_INT(cpu);
}
