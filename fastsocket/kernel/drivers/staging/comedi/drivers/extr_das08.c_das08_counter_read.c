
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int i8254; } ;


 TYPE_1__* devpriv ;
 unsigned int i8254_read_channel (int *,int) ;

__attribute__((used)) static int das08_counter_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 int chan = insn->chanspec;


 data[0] = i8254_read_channel(&devpriv->i8254, chan);


 return 1;
}
