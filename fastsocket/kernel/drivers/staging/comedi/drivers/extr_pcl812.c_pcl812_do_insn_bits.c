
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 scalar_t__ PCL812_DO_HI ;
 scalar_t__ PCL812_DO_LO ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int pcl812_do_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= data[0] & data[1];
  outb(s->state & 0xff, dev->iobase + PCL812_DO_LO);
  outb((s->state >> 8), dev->iobase + PCL812_DO_HI);
 }
 data[1] = s->state;

 return 2;
}
