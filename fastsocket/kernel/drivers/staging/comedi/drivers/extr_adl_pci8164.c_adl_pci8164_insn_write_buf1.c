
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int PCI8164_BUF1 ;
 int adl_pci8164_insn_out (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,char*,int ) ;

__attribute__((used)) static int adl_pci8164_insn_write_buf1(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 adl_pci8164_insn_out(dev, s, insn, data, "BUF1", PCI8164_BUF1);
 return 2;
}
