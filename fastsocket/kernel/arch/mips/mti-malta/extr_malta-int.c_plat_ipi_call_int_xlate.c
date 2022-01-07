
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIC_CALL_INT (unsigned int) ;

unsigned int plat_ipi_call_int_xlate(unsigned int cpu)
{
 return GIC_CALL_INT(cpu);
}
