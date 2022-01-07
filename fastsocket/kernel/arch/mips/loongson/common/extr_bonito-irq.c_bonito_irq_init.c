
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BONITO_IRQ_BASE ;
 int bonito_irq_type ;
 int dma_timeout_irqaction ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (scalar_t__,int *,int ) ;
 int setup_irq (scalar_t__,int *) ;

void bonito_irq_init(void)
{
 u32 i;

 for (i = BONITO_IRQ_BASE; i < BONITO_IRQ_BASE + 32; i++)
  set_irq_chip_and_handler(i, &bonito_irq_type, handle_level_irq);

 setup_irq(BONITO_IRQ_BASE + 10, &dma_timeout_irqaction);
}
