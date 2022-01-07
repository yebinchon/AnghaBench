
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int a_data; } ;


 scalar_t__ PARPORT_A ;
 TYPE_1__* devpriv ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int parport_insn_a(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  devpriv->a_data &= ~data[0];
  devpriv->a_data |= (data[0] & data[1]);

  outb(devpriv->a_data, dev->iobase + PARPORT_A);
 }

 data[1] = inb(dev->iobase + PARPORT_A);

 return 2;
}
