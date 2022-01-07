
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dio_counter_iobase; } ;


 scalar_t__ DIO_DATA_60XX_REG ;
 TYPE_1__* priv (struct comedi_device*) ;
 unsigned int readb (scalar_t__) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dio_60xx_wbits(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  writeb(s->state,
         priv(dev)->dio_counter_iobase + DIO_DATA_60XX_REG);
 }

 data[1] = readb(priv(dev)->dio_counter_iobase + DIO_DATA_60XX_REG);

 return 2;
}
