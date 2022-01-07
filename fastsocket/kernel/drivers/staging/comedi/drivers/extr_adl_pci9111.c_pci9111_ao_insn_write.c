
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int ao_readback; } ;


 TYPE_1__* dev_private ;
 int pci9111_ao_set_data (unsigned int) ;

__attribute__((used)) static int
pci9111_ao_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_insn *insn,
        unsigned int *data)
{
 int i;

 for (i = 0; i < insn->n; i++) {
  pci9111_ao_set_data(data[i]);
  dev_private->ao_readback = data[i];
 }

 return i;
}
