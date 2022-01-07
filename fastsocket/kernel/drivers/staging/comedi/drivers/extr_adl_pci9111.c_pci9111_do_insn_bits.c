
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int PCI9111_DO_MASK ;
 int pci9111_do_set_bits (unsigned int) ;

__attribute__((used)) static int pci9111_do_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *subdevice,
    struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bits;





 data[0] &= PCI9111_DO_MASK;

 bits = subdevice->state;
 bits &= ~data[0];
 bits |= data[0] & data[1];
 subdevice->state = bits;

 pci9111_do_set_bits(bits);

 data[1] = bits;

 return 2;
}
