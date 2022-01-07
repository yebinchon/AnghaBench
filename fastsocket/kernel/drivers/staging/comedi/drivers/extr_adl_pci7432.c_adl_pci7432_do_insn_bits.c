
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {unsigned int iobase; } ;


 int EINVAL ;
 unsigned int PCI7432_DO ;
 int outl (int,unsigned int) ;
 int printk (char*,...) ;

__attribute__((used)) static int adl_pci7432_do_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 printk("comedi: pci7432_do_insn_bits called\n");
 printk("comedi: data0: %8x data1: %8x\n", data[0], data[1]);

 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);

  printk("comedi: out: %8x on iobase %4lx\n", s->state,
         dev->iobase + PCI7432_DO);
  outl(s->state & 0xffffffff, dev->iobase + PCI7432_DO);
 }
 return 2;
}
