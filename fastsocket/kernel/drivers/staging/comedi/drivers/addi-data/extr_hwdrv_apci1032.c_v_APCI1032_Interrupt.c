
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int tsk_Current; } ;


 unsigned int APCI1032_DIGITAL_IP_INTERRUPT_DISABLE ;
 scalar_t__ APCI1032_DIGITAL_IP_INTERRUPT_STATUS ;
 scalar_t__ APCI1032_DIGITAL_IP_IRQ ;
 int SIGIO ;
 TYPE_1__* devpriv ;
 void* inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int send_sig (int ,int ,int ) ;
 int ui_InterruptStatus ;

__attribute__((used)) static void v_APCI1032_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;

 unsigned int ui_Temp;

 ui_Temp = inl(devpriv->iobase + APCI1032_DIGITAL_IP_IRQ);
 outl(ui_Temp & APCI1032_DIGITAL_IP_INTERRUPT_DISABLE,
  devpriv->iobase + APCI1032_DIGITAL_IP_IRQ);
 ui_InterruptStatus =
  inl(devpriv->iobase + APCI1032_DIGITAL_IP_INTERRUPT_STATUS);
 ui_InterruptStatus = ui_InterruptStatus & 0X0000FFFF;
 send_sig(SIGIO, devpriv->tsk_Current, 0);
 outl(ui_Temp, devpriv->iobase + APCI1032_DIGITAL_IP_IRQ);
 return;
}
