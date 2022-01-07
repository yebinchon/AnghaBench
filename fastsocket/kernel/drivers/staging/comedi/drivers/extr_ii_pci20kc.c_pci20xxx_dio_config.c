
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ioaddr; } ;


 unsigned char DIO_BE ;
 unsigned char DIO_BI ;
 unsigned char DIO_BO ;
 unsigned char DIO_CAND ;
 unsigned char DIO_PS_0 ;
 unsigned char DIO_PS_1 ;
 unsigned char DIO_PS_2 ;
 unsigned char DIO_PS_3 ;
 scalar_t__ PCI20000_DIO_BUFFER ;
 scalar_t__ PCI20000_DIO_CONTROL_01 ;
 scalar_t__ PCI20000_DIO_CONTROL_23 ;
 unsigned char PCI20000_DIO_EIC ;
 unsigned char PCI20000_DIO_EOC ;
 unsigned char PCI20000_DIO_OIC ;
 unsigned char PCI20000_DIO_OOC ;
 TYPE_1__* devpriv ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void pci20xxx_dio_config(struct comedi_device *dev,
    struct comedi_subdevice *s)
{
 unsigned char control_01;
 unsigned char control_23;
 unsigned char buffer;

 control_01 = readb(devpriv->ioaddr + PCI20000_DIO_CONTROL_01);
 control_23 = readb(devpriv->ioaddr + PCI20000_DIO_CONTROL_23);
 buffer = readb(devpriv->ioaddr + PCI20000_DIO_BUFFER);

 if (s->io_bits & 0x000000ff) {

  control_01 &= PCI20000_DIO_EOC;
  buffer = (buffer & (~(DIO_BE << DIO_PS_0))) | (DIO_BO <<
              DIO_PS_0);
 } else {

  control_01 = (control_01 & DIO_CAND) | PCI20000_DIO_EIC;
  buffer = (buffer & (~(DIO_BI << DIO_PS_0)));
 }
 if (s->io_bits & 0x0000ff00) {

  control_01 &= PCI20000_DIO_OOC;
  buffer = (buffer & (~(DIO_BE << DIO_PS_1))) | (DIO_BO <<
              DIO_PS_1);
 } else {

  control_01 = (control_01 & DIO_CAND) | PCI20000_DIO_OIC;
  buffer = (buffer & (~(DIO_BI << DIO_PS_1)));
 }
 if (s->io_bits & 0x00ff0000) {

  control_23 &= PCI20000_DIO_EOC;
  buffer = (buffer & (~(DIO_BE << DIO_PS_2))) | (DIO_BO <<
              DIO_PS_2);
 } else {

  control_23 = (control_23 & DIO_CAND) | PCI20000_DIO_EIC;
  buffer = (buffer & (~(DIO_BI << DIO_PS_2)));
 }
 if (s->io_bits & 0xff000000) {

  control_23 &= PCI20000_DIO_OOC;
  buffer = (buffer & (~(DIO_BE << DIO_PS_3))) | (DIO_BO <<
              DIO_PS_3);
 } else {

  control_23 = (control_23 & DIO_CAND) | PCI20000_DIO_OIC;
  buffer = (buffer & (~(DIO_BI << DIO_PS_3)));
 }
 writeb(control_01, devpriv->ioaddr + PCI20000_DIO_CONTROL_01);
 writeb(control_23, devpriv->ioaddr + PCI20000_DIO_CONTROL_23);
 writeb(buffer, devpriv->ioaddr + PCI20000_DIO_BUFFER);
}
