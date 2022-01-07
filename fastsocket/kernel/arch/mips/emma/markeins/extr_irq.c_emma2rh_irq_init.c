
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ EMMA2RH_IRQ_BASE ;
 scalar_t__ NUM_EMMA2RH_IRQ ;
 int emma2rh_irq_controller ;
 int handle_level_irq ;
 int set_irq_chip_and_handler_name (scalar_t__,int *,int ,char*) ;

void emma2rh_irq_init(void)
{
 u32 i;

 for (i = 0; i < NUM_EMMA2RH_IRQ; i++)
  set_irq_chip_and_handler_name(EMMA2RH_IRQ_BASE + i,
           &emma2rh_irq_controller,
           handle_level_irq, "level");
}
