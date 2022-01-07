
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int acl7225b_do_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
 }
 if (data[0] & 0x00ff)
  outb(s->state & 0xff, dev->iobase + (unsigned long)s->private);
 if (data[0] & 0xff00)
  outb((s->state >> 8),
       dev->iobase + (unsigned long)s->private + 1);

 data[1] = s->state;

 return 2;
}
