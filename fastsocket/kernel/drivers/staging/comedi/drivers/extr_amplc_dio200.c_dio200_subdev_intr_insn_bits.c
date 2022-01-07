
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {unsigned int valid_isns; int iobase; scalar_t__ has_int_sce; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int inb (int ) ;

__attribute__((used)) static int
dio200_subdev_intr_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 struct dio200_subdev_intr *subpriv = s->private;

 if (subpriv->has_int_sce) {

  data[1] = inb(subpriv->iobase) & subpriv->valid_isns;
 } else {

  data[0] = 0;
 }

 return 2;
}
