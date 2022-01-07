
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int SUBS_AI ;
 unsigned int dt3k_readsingle (struct comedi_device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dt3k_ai_insn(struct comedi_device *dev, struct comedi_subdevice *s,
   struct comedi_insn *insn, unsigned int *data)
{
 int i;
 unsigned int chan, gain, aref;

 chan = CR_CHAN(insn->chanspec);
 gain = CR_RANGE(insn->chanspec);

 aref = CR_AREF(insn->chanspec);

 for (i = 0; i < insn->n; i++) {
  data[i] = dt3k_readsingle(dev, SUBS_AI, chan, gain);
 }

 return i;
}
