
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq_nosync (unsigned int) ;
 int disable_se7206_irq (unsigned int) ;
 int handle_level_irq ;
 int se7206_irq_chip ;
 int set_irq_chip_and_handler_name (unsigned int,int *,int ,char*) ;

__attribute__((used)) static void make_se7206_irq(unsigned int irq)
{
 disable_irq_nosync(irq);
 set_irq_chip_and_handler_name(irq, &se7206_irq_chip,
          handle_level_irq, "level");
 disable_se7206_irq(irq);
}
