
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_kmi_port {int io; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KMIDATA ;
 int KMIIR ;
 unsigned int KMIIR_RXINTR ;
 unsigned int readb (int ) ;
 int serio_interrupt (int ,unsigned int,int ) ;

__attribute__((used)) static irqreturn_t amba_kmi_int(int irq, void *dev_id)
{
 struct amba_kmi_port *kmi = dev_id;
 unsigned int status = readb(KMIIR);
 int handled = IRQ_NONE;

 while (status & KMIIR_RXINTR) {
  serio_interrupt(kmi->io, readb(KMIDATA), 0);
  status = readb(KMIIR);
  handled = IRQ_HANDLED;
 }

 return handled;
}
