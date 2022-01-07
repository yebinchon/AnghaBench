
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int i_APCI3200_Reset (struct comedi_device*) ;

int i_APCI3200_InsnWriteReleaseAnalogInput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 i_APCI3200_Reset(dev);
 return insn->n;
}
