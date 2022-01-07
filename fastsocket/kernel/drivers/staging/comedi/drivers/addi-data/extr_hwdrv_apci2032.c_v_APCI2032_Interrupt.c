
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int tsk_Current; scalar_t__ iobase; } ;


 scalar_t__ APCI2032_DIGITAL_OP ;
 scalar_t__ APCI2032_DIGITAL_OP_INTERRUPT ;
 scalar_t__ APCI2032_DIGITAL_OP_INTERRUPT_STATUS ;
 scalar_t__ APCI2032_DIGITAL_OP_IRQ ;
 int SIGIO ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int printk (char*) ;
 int send_sig (int ,int ,int ) ;
 int ui_Type ;

void v_APCI2032_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int ui_DO;

 ui_DO = inl(devpriv->iobase + APCI2032_DIGITAL_OP_IRQ) & 0x1;

 if (ui_DO == 0) {
  printk("\nInterrupt from unKnown source\n");
 }
 if (ui_DO) {

  ui_Type =
   inl(devpriv->iobase +
   APCI2032_DIGITAL_OP_INTERRUPT_STATUS) & 0x3;
  outl(0x0,
   devpriv->iobase + APCI2032_DIGITAL_OP +
   APCI2032_DIGITAL_OP_INTERRUPT);
  if (ui_Type == 1) {

   send_sig(SIGIO, devpriv->tsk_Current, 0);
  }
  else {
   if (ui_Type == 2) {

    send_sig(SIGIO, devpriv->tsk_Current, 0);
   }
  }
 }

 return;

}
