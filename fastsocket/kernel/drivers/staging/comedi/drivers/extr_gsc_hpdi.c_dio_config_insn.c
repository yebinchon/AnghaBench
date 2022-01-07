
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int dio_config_output; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int EINVAL ;




 int dio_config_block_size (struct comedi_device*,unsigned int*) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static int dio_config_insn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 switch (data[0]) {
 case 129:
  priv(dev)->dio_config_output = 1;
  return insn->n;
  break;
 case 130:
  priv(dev)->dio_config_output = 0;
  return insn->n;
  break;
 case 128:
  data[1] =
      priv(dev)->dio_config_output ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 case 131:
  return dio_config_block_size(dev, data);
  break;
 default:
  break;
 }

 return -EINVAL;
}
