
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irq_hw_number_t ;
struct TYPE_2__ {int hwirq; } ;


 TYPE_1__* irq_map ;

irq_hw_number_t virq_to_hw(unsigned int virq)
{
 return irq_map[virq].hwirq;
}
