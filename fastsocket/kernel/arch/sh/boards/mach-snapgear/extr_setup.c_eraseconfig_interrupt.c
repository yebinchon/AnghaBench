
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ctrl_inb (int) ;
 int printk (char*) ;

__attribute__((used)) static irqreturn_t eraseconfig_interrupt(int irq, void *dev_id)
{
 (void)ctrl_inb(0xb8000000);

 printk("SnapGear: erase switch interrupt!\n");

 return IRQ_HANDLED;
}
