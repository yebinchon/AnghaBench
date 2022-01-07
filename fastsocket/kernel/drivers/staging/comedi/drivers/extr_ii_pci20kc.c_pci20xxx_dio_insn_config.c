
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int pci20xxx_dio_config (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int pci20xxx_dio_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 int mask, bits;

 mask = 1 << CR_CHAN(insn->chanspec);
 if (mask & 0x000000ff) {
  bits = 0x000000ff;
 } else if (mask & 0x0000ff00) {
  bits = 0x0000ff00;
 } else if (mask & 0x00ff0000) {
  bits = 0x00ff0000;
 } else {
  bits = 0xff000000;
 }
 if (data[0]) {
  s->io_bits |= bits;
 } else {
  s->io_bits &= ~bits;
 }
 pci20xxx_dio_config(dev, s);

 return 1;
}
