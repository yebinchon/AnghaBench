
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PRINTK_3 (int ,char*,int,void*) ;
 int TRACE_TP3780I ;

__attribute__((used)) static irqreturn_t UartInterrupt(int irq, void *dev_id)
{
 PRINTK_3(TRACE_TP3780I,
  "tp3780i::UartInterrupt entry irq %x dev_id %p\n", irq, dev_id);
 return IRQ_HANDLED;
}
