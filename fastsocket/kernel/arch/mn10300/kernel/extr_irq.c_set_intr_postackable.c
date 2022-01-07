
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_level_irq ;
 int mn10300_cpu_pic_level ;
 int set_irq_chip_and_handler (int,int *,int ) ;

void set_intr_postackable(int irq)
{
 set_irq_chip_and_handler(irq, &mn10300_cpu_pic_level,
     handle_level_irq);
}
