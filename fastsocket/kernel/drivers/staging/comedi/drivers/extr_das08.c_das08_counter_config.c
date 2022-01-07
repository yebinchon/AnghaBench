
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int i8254; } ;


 int EINVAL ;


 TYPE_1__* devpriv ;
 unsigned int i8254_read_status (int *,int) ;
 int i8254_set_mode (int *,int,unsigned int) ;

__attribute__((used)) static int das08_counter_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int chan = insn->chanspec;

 if (insn->n != 2)
  return -EINVAL;

 switch (data[0]) {
 case 128:
  i8254_set_mode(&devpriv->i8254, chan, data[1]);
  break;
 case 129:
  data[1] = i8254_read_status(&devpriv->i8254, chan);
  break;
 default:
  return -EINVAL;
  break;
 }
 return 2;
}
