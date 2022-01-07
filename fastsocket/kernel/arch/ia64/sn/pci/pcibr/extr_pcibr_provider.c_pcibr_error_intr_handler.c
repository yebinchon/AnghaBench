
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcibus_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int panic (char*) ;
 scalar_t__ sal_pcibr_error_interrupt (struct pcibus_info*) ;

__attribute__((used)) static irqreturn_t
pcibr_error_intr_handler(int irq, void *arg)
{
 struct pcibus_info *soft = arg;

 if (sal_pcibr_error_interrupt(soft) < 0)
  panic("pcibr_error_intr_handler(): Fatal Bridge Error");

 return IRQ_HANDLED;
}
