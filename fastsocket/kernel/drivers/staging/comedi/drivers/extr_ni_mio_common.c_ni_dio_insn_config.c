
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int dio_control; int (* stc_writew ) (struct comedi_device*,int ,int ) ;} ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int DIO_Control_Register ;
 int DIO_Pins_Dir (int) ;
 int DIO_Pins_Dir_Mask ;
 int EINVAL ;



 TYPE_1__* devpriv ;
 int printk (char*,int,unsigned int) ;
 int stub1 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_dio_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{




 switch (data[0]) {
 case 129:
  s->io_bits |= 1 << CR_CHAN(insn->chanspec);
  break;
 case 130:
  s->io_bits &= ~(1 << CR_CHAN(insn->chanspec));
  break;
 case 128:
  data[1] =
      (s->
       io_bits & (1 << CR_CHAN(insn->chanspec))) ? COMEDI_OUTPUT :
      COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
 }

 devpriv->dio_control &= ~DIO_Pins_Dir_Mask;
 devpriv->dio_control |= DIO_Pins_Dir(s->io_bits);
 devpriv->stc_writew(dev, devpriv->dio_control, DIO_Control_Register);

 return 1;
}
