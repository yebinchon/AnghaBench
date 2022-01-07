
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_keypad {scalar_t__ mmio_base; } ;
typedef int irqreturn_t ;


 unsigned int INTTR ;
 int IRQ_HANDLED ;
 unsigned int IS1KEY ;
 scalar_t__ KPI_STATUS ;
 unsigned int __raw_readl (scalar_t__) ;
 int w90p910_keypad_scan_matrix (struct w90p910_keypad*,unsigned int) ;

__attribute__((used)) static irqreturn_t w90p910_keypad_irq_handler(int irq, void *dev_id)
{
 struct w90p910_keypad *keypad = dev_id;
 unsigned int kstatus, val;

 kstatus = __raw_readl(keypad->mmio_base + KPI_STATUS);

 val = INTTR | IS1KEY;

 if (kstatus & val)
  w90p910_keypad_scan_matrix(keypad, kstatus);

 return IRQ_HANDLED;
}
