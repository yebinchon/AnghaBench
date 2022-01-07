
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 int dt3k_dio_config (struct comedi_device*,int) ;

__attribute__((used)) static int dt3k_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int mask;

 mask = (CR_CHAN(insn->chanspec) < 4) ? 0x0f : 0xf0;

 switch (data[0]) {
 case 129:
  s->io_bits |= mask;
  break;
 case 130:
  s->io_bits &= ~mask;
  break;
 case 128:
  data[1] =
      (s->
       io_bits & (1 << CR_CHAN(insn->chanspec))) ? COMEDI_OUTPUT :
      COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
  break;
 }
 mask = (s->io_bits & 0x01) | ((s->io_bits & 0x10) >> 3);
 dt3k_dio_config(dev, mask);

 return insn->n;
}
