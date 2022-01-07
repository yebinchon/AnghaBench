
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI1032_DIGITAL_IP_INTERRUPT_MODE1 ;
 scalar_t__ APCI1032_DIGITAL_IP_INTERRUPT_MODE2 ;
 scalar_t__ APCI1032_DIGITAL_IP_INTERRUPT_STATUS ;
 scalar_t__ APCI1032_DIGITAL_IP_IRQ ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

int i_APCI1032_Reset(struct comedi_device *dev)
{
 outl(0x0, devpriv->iobase + APCI1032_DIGITAL_IP_IRQ);
 inl(devpriv->iobase + APCI1032_DIGITAL_IP_INTERRUPT_STATUS);
 outl(0x0, devpriv->iobase + APCI1032_DIGITAL_IP_INTERRUPT_MODE1);
 outl(0x0, devpriv->iobase + APCI1032_DIGITAL_IP_INTERRUPT_MODE2);
 return 0;
}
