
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int io_bits; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dio_counter_iobase; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 scalar_t__ DIO_DIRECTION_60XX_REG ;
 int EINVAL ;



 TYPE_1__* priv (struct comedi_device*) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dio_60xx_config_insn(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 unsigned int mask;

 mask = 1 << CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 130:
  s->io_bits &= ~mask;
  break;
 case 129:
  s->io_bits |= mask;
  break;
 case 128:
  data[1] = (s->io_bits & mask) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return 2;
 default:
  return -EINVAL;
 }

 writeb(s->io_bits,
        priv(dev)->dio_counter_iobase + DIO_DIRECTION_60XX_REG);

 return 1;
}
