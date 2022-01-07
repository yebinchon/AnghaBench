
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diosubd_data {int regs; scalar_t__ addr; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static int pci_dio_insn_bits_di_w(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 const struct diosubd_data *d = (const struct diosubd_data *)s->private;
 int i;

 data[1] = 0;
 for (i = 0; i < d->regs; i++)
  data[1] |= inw(dev->iobase + d->addr + 2 * i) << (16 * i);

 return 2;
}
