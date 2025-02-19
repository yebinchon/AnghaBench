
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 scalar_t__ PCL725_DI ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pcl725_di_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 data[1] = inb(dev->iobase + PCL725_DI);

 return 2;
}
