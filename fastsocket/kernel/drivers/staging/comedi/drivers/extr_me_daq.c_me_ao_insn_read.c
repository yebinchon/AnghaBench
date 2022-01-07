
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 size_t CR_CHAN (int ) ;
 TYPE_1__* dev_private ;

__attribute__((used)) static int me_ao_insn_read(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int i;

 for (i = 0; i < insn->n; i++) {
  data[i] =
      dev_private->ao_readback[CR_CHAN((&insn->chanspec)[i])];
 }

 return 1;
}
