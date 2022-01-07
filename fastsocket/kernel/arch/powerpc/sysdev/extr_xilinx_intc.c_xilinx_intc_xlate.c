
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef size_t irq_hw_number_t ;


 int EINVAL ;
 size_t XILINX_INTC_MAXIRQS ;
 void** xilinx_intc_map_senses ;
 void** xilinx_intc_typetable ;

__attribute__((used)) static int xilinx_intc_xlate(struct irq_host *h, struct device_node *ct,
    u32 *intspec, unsigned int intsize,
    irq_hw_number_t *out_hwirq,
    unsigned int *out_flags)
{
 if ((intsize < 2) || (intspec[0] >= XILINX_INTC_MAXIRQS))
  return -EINVAL;



 xilinx_intc_typetable[intspec[0]] = xilinx_intc_map_senses[intspec[1]];




 *out_hwirq = intspec[0];
 *out_flags = xilinx_intc_map_senses[intspec[1]];

 return 0;
}
