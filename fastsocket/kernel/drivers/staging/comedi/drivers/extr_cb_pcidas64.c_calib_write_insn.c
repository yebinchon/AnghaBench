
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* caldac_state; } ;


 int CR_CHAN (int ) ;
 int caldac_write (struct comedi_device*,int,unsigned int) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static int calib_write_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int channel = CR_CHAN(insn->chanspec);



 if (priv(dev)->caldac_state[channel] == data[0])
  return 1;

 caldac_write(dev, channel, data[0]);

 return 1;
}
