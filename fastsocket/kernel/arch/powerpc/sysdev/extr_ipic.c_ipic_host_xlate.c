
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef void* irq_hw_number_t ;


 unsigned int IRQ_TYPE_NONE ;

__attribute__((used)) static int ipic_host_xlate(struct irq_host *h, struct device_node *ct,
      u32 *intspec, unsigned int intsize,
      irq_hw_number_t *out_hwirq, unsigned int *out_flags)

{



 *out_hwirq = intspec[0];
 if (intsize > 1)
  *out_flags = intspec[1];
 else
  *out_flags = IRQ_TYPE_NONE;
 return 0;
}
