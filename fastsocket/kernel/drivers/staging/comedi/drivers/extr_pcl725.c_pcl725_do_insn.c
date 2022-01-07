
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 scalar_t__ PCL725_DO ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int pcl725_do_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  outb(s->state, dev->iobase + PCL725_DO);
 }

 data[1] = s->state;

 return 2;
}
