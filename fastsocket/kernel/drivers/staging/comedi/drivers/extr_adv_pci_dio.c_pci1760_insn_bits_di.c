
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ IMB3 ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int pci1760_insn_bits_di(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 data[1] = inb(dev->iobase + IMB3);

 return 2;
}
