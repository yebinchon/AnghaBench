
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int c_data; } ;


 scalar_t__ PARPORT_C ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int parport_insn_config_a(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->io_bits = 0xff;
  devpriv->c_data &= ~(1 << 5);
 } else {
  s->io_bits = 0;
  devpriv->c_data |= (1 << 5);
 }
 outb(devpriv->c_data, dev->iobase + PARPORT_C);

 return 1;
}
