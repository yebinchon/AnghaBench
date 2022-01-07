
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int status; } ;


 int BUG_ON (int) ;
 int IRQ_LEVEL ;
 int MV64x60_LEVEL1_GPP ;
 int MV64x60_LEVEL1_MASK ;
 int MV64x60_LEVEL1_OFFSET ;
 TYPE_1__* get_irq_desc (unsigned int) ;
 int handle_level_irq ;
 int * mv64x60_chips ;
 int set_irq_chip_and_handler (unsigned int,int ,int ) ;

__attribute__((used)) static int mv64x60_host_map(struct irq_host *h, unsigned int virq,
     irq_hw_number_t hwirq)
{
 int level1;

 get_irq_desc(virq)->status |= IRQ_LEVEL;

 level1 = (hwirq & MV64x60_LEVEL1_MASK) >> MV64x60_LEVEL1_OFFSET;
 BUG_ON(level1 > MV64x60_LEVEL1_GPP);
 set_irq_chip_and_handler(virq, mv64x60_chips[level1], handle_level_irq);

 return 0;
}
