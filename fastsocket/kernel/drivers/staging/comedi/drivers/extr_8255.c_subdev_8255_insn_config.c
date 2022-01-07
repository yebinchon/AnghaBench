
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 int do_config (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int subdev_8255_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned int mask;
 unsigned int bits;

 mask = 1 << CR_CHAN(insn->chanspec);
 if (mask & 0x0000ff) {
  bits = 0x0000ff;
 } else if (mask & 0x00ff00) {
  bits = 0x00ff00;
 } else if (mask & 0x0f0000) {
  bits = 0x0f0000;
 } else {
  bits = 0xf00000;
 }

 switch (data[0]) {
 case 130:
  s->io_bits &= ~bits;
  break;
 case 129:
  s->io_bits |= bits;
  break;
 case 128:
  data[1] = (s->io_bits & bits) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
 }

 do_config(dev, s);

 return 1;
}
