
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diosubd_data {int regs; scalar_t__ addr; } ;
struct comedi_subdevice {unsigned int state; scalar_t__ private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int outw (int,scalar_t__) ;

__attribute__((used)) static int pci_dio_insn_bits_do_w(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 const struct diosubd_data *d = (const struct diosubd_data *)s->private;
 int i;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  for (i = 0; i < d->regs; i++)
   outw((s->state >> (16 * i)) & 0xffff,
        dev->iobase + d->addr + 2 * i);
 }
 data[1] = s->state;

 return 2;
}
