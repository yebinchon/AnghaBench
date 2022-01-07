
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int ao_fifo_depth; } ;
struct TYPE_5__ {TYPE_1__* mite; } ;
struct TYPE_4__ {unsigned int fifo_size; } ;




 int EINVAL ;

 TYPE_3__ boardtype ;
 TYPE_2__* devpriv ;

__attribute__((used)) static int ni_ao_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 129:
   data[2] = 1 + boardtype.ao_fifo_depth * sizeof(short);
   if (devpriv->mite)
    data[2] += devpriv->mite->fifo_size;
   break;
  case 130:
   data[2] = 0;
   break;
  default:
   return -EINVAL;
   break;
  }
  return 0;
 default:
  break;
 }

 return -EINVAL;
}
