
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int pcl734_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  if ((data[0] >> 0) & 0xff)
   outb((s->state >> 0) & 0xff, dev->iobase + 0);
  if ((data[0] >> 8) & 0xff)
   outb((s->state >> 8) & 0xff, dev->iobase + 1);
  if ((data[0] >> 16) & 0xff)
   outb((s->state >> 16) & 0xff, dev->iobase + 2);
  if ((data[0] >> 24) & 0xff)
   outb((s->state >> 24) & 0xff, dev->iobase + 3);
 }
 data[1] = s->state;

 return 2;
}
