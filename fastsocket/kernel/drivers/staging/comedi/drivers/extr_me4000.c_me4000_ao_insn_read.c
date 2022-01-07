
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int minor; } ;
struct TYPE_4__ {TYPE_1__* ao_context; } ;
struct TYPE_3__ {unsigned int mirror; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;
 TYPE_2__* info ;
 int printk (char*,int ) ;

__attribute__((used)) static int me4000_ao_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);

 if (insn->n == 0) {
  return 0;
 } else if (insn->n > 1) {
  printk
      ("comedi%d: me4000: me4000_ao_insn_read(): Invalid instruction length\n",
       dev->minor);
  return -EINVAL;
 }

 data[0] = info->ao_context[chan].mirror;

 return 1;
}
