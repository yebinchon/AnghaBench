
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef void* irq_hw_number_t ;


 int BUG_ON (int) ;

__attribute__((used)) static int uic_host_xlate(struct irq_host *h, struct device_node *ct,
     u32 *intspec, unsigned int intsize,
     irq_hw_number_t *out_hwirq, unsigned int *out_type)

{

 BUG_ON(intsize != 2);
 *out_hwirq = intspec[0];
 *out_type = intspec[1];
 return 0;
}
