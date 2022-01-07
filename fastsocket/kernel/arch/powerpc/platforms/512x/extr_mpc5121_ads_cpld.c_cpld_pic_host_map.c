
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int status; } ;


 int IRQ_LEVEL ;
 int cpld_pic ;
 TYPE_1__* get_irq_desc (unsigned int) ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int
cpld_pic_host_map(struct irq_host *h, unsigned int virq,
        irq_hw_number_t hw)
{
 get_irq_desc(virq)->status |= IRQ_LEVEL;
 set_irq_chip_and_handler(virq, &cpld_pic, handle_level_irq);
 return 0;
}
