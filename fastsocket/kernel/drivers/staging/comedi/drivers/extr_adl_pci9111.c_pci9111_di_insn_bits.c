
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int pci9111_di_get_bits () ;

__attribute__((used)) static int pci9111_di_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *subdevice,
    struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bits;

 bits = pci9111_di_get_bits();
 data[1] = bits;

 return 2;
}
