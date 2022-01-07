
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int io_bidirection_pin_reg; } ;




 unsigned int CR_CHAN (int ) ;
 int EINVAL ;




 int IO_Bidirection_Pin_Register ;
 TYPE_1__* devpriv ;
 int ni_config_filter (struct comedi_device*,unsigned int,unsigned int) ;
 unsigned int ni_get_pfi_routing (struct comedi_device*,unsigned int) ;
 int ni_set_bits (struct comedi_device*,int ,int,int) ;
 int ni_set_pfi_routing (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_pfi_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan;

 if (insn->n < 1)
  return -EINVAL;

 chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 132:
  ni_set_bits(dev, IO_Bidirection_Pin_Register, 1 << chan, 1);
  break;
 case 133:
  ni_set_bits(dev, IO_Bidirection_Pin_Register, 1 << chan, 0);
  break;
 case 131:
  data[1] =
      (devpriv->io_bidirection_pin_reg & (1 << chan)) ?
      132 : 133;
  return 0;
  break;
 case 128:
  return ni_set_pfi_routing(dev, chan, data[1]);
  break;
 case 129:
  data[1] = ni_get_pfi_routing(dev, chan);
  break;
 case 130:
  return ni_config_filter(dev, chan, data[1]);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
