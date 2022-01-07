
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int pci224_ao_set_data (struct comedi_device*,int,int,unsigned int) ;

__attribute__((used)) static int
pci224_ao_insn_write(struct comedi_device *dev, struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan, range;


 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);



 for (i = 0; i < insn->n; i++) {
  pci224_ao_set_data(dev, chan, range, data[i]);
 }
 return i;
}
