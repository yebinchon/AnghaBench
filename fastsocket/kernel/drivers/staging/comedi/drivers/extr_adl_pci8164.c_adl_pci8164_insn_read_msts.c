
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int PCI8164_MSTS ;
 int adl_pci8164_insn_read (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,char*,int ) ;

__attribute__((used)) static int adl_pci8164_insn_read_msts(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 adl_pci8164_insn_read(dev, s, insn, data, "MSTS", PCI8164_MSTS);
 return 2;
}
