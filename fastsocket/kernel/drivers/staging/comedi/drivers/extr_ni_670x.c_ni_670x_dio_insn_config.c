
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 scalar_t__ DIO_PORT0_DIR_OFFSET ;
 int EINVAL ;



 TYPE_2__* devpriv ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ni_670x_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 129:
  s->io_bits |= 1 << chan;
  break;
 case 130:
  s->io_bits &= ~(1 << chan);
  break;
 case 128:
  data[1] =
      (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
  break;
 }
 writel(s->io_bits, devpriv->mite->daq_io_addr + DIO_PORT0_DIR_OFFSET);

 return insn->n;
}
