
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ di_hi; scalar_t__ di_lo; } ;


 int EINVAL ;
 int inb (scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcl726_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n != 2)
  return -EINVAL;

 data[1] = inb(dev->iobase + this_board->di_lo) |
     (inb(dev->iobase + this_board->di_hi) << 8);

 return 2;
}
