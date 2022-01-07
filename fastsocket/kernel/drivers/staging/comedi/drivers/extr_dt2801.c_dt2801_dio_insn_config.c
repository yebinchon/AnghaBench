
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;


 int DT_C_SET_DIGIN ;
 int DT_C_SET_DIGOUT ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,int) ;

__attribute__((used)) static int dt2801_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int which = 0;

 if (s == dev->subdevices + 4)
  which = 1;


 if (data[0]) {
  s->io_bits = 0xff;
  dt2801_writecmd(dev, DT_C_SET_DIGOUT);
 } else {
  s->io_bits = 0;
  dt2801_writecmd(dev, DT_C_SET_DIGIN);
 }
 dt2801_writedata(dev, which);

 return 1;
}
