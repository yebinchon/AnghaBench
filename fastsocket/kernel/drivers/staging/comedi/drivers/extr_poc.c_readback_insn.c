
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ private; } ;


 int CR_CHAN (int ) ;

__attribute__((used)) static int readback_insn(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int chan;

 chan = CR_CHAN(insn->chanspec);
 data[0] = ((unsigned int *)dev->private)[chan];

 return 1;
}
