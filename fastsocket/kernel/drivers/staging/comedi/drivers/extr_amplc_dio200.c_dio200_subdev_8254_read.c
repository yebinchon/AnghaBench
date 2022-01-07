
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8254 {int iobase; } ;
struct comedi_subdevice {struct dio200_subdev_8254* private; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 unsigned int i8254_read (int ,int ,int) ;

__attribute__((used)) static int
dio200_subdev_8254_read(struct comedi_device *dev, struct comedi_subdevice *s,
   struct comedi_insn *insn, unsigned int *data)
{
 struct dio200_subdev_8254 *subpriv = s->private;
 int chan = CR_CHAN(insn->chanspec);

 data[0] = i8254_read(subpriv->iobase, 0, chan);

 return 1;
}
