
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* trimpot_value; } ;


 unsigned int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int trimpot_read_insn(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 unsigned int channel = CR_CHAN(insn->chanspec);

 data[0] = devpriv->trimpot_value[channel];

 return 1;
}
