
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int iobase; } ;


 int C6X_encInput (int ,int) ;
 int CR_CHAN (int ) ;

__attribute__((used)) static int c6xdigio_ei_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{

 int n;
 int chan = CR_CHAN(insn->chanspec);

 for (n = 0; n < insn->n; n++) {
  data[n] = (C6X_encInput(dev->iobase, chan) & 0xffffff);
 }

 return n;
}
