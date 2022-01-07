
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 int inb (scalar_t__) ;

__attribute__((used)) static int acl7225b_di_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 data[1] = inb(dev->iobase + (unsigned long)s->private) |
     (inb(dev->iobase + (unsigned long)s->private + 1) << 8);

 return 2;
}
