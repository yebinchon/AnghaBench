
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int PCI8164_AXIS_U ;
 unsigned int PCI8164_AXIS_X ;
 unsigned int PCI8164_AXIS_Y ;
 unsigned int PCI8164_AXIS_Z ;
 int outw (unsigned int,scalar_t__) ;
 int printk (char*,char*,unsigned int,unsigned int,char*) ;

__attribute__((used)) static void adl_pci8164_insn_out(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data,
     char *action, unsigned short offset)
{
 unsigned int axis, axis_reg;

 char *axisname;

 axis = CR_CHAN(insn->chanspec);

 switch (axis) {
 case 0:
  axis_reg = PCI8164_AXIS_X;
  axisname = "X";
  break;
 case 1:
  axis_reg = PCI8164_AXIS_Y;
  axisname = "Y";
  break;
 case 2:
  axis_reg = PCI8164_AXIS_Z;
  axisname = "Z";
  break;
 case 3:
  axis_reg = PCI8164_AXIS_U;
  axisname = "U";
  break;
 default:
  axis_reg = PCI8164_AXIS_X;
  axisname = "X";
 }

 outw(data[0], dev->iobase + axis_reg + offset);

 printk("comedi: pci8164 %s write -> %04X:%04X on axis %s\n", action,
        data[0], data[1], axisname);

}
