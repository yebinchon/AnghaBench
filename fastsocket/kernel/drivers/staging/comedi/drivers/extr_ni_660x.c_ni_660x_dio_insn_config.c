
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int pfi_direction_bits; int * pfi_output_selects; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;






 int ni660x_config_filter (struct comedi_device*,int,unsigned int) ;
 unsigned int ni_660x_get_pfi_routing (struct comedi_device*,int) ;
 int ni_660x_select_pfi_output (struct comedi_device*,int,int ) ;
 int ni_660x_set_pfi_routing (struct comedi_device*,int,unsigned int) ;
 int pfi_output_select_high_Z ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static int ni_660x_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);






 switch (data[0]) {
 case 132:
  private(dev)->pfi_direction_bits |= ((uint64_t) 1) << chan;
  ni_660x_select_pfi_output(dev, chan,
       private(dev)->
       pfi_output_selects[chan]);
  break;
 case 133:
  private(dev)->pfi_direction_bits &= ~(((uint64_t) 1) << chan);
  ni_660x_select_pfi_output(dev, chan, pfi_output_select_high_Z);
  break;
 case 131:
  data[1] =
      (private(dev)->pfi_direction_bits &
       (((uint64_t) 1) << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return 0;
 case 128:
  return ni_660x_set_pfi_routing(dev, chan, data[1]);
  break;
 case 129:
  data[1] = ni_660x_get_pfi_routing(dev, chan);
  break;
 case 130:
  ni660x_config_filter(dev, chan, data[1]);
  break;
 default:
  return -EINVAL;
  break;
 };
 return 0;
}
