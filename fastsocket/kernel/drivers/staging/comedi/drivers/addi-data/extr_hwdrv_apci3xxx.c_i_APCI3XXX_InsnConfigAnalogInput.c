
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;



 int i_APCI3XXX_AnalogInputConfigOperatingMode (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int printk (char*,...) ;

int i_APCI3XXX_InsnConfigAnalogInput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;





 if (insn->n >= 1) {
  switch ((unsigned char) data[0]) {
  case 128:
   i_ReturnValue =
    i_APCI3XXX_AnalogInputConfigOperatingMode(dev,
    s, insn, data);
   break;

  default:
   i_ReturnValue = -100;
   printk("Config command error %d\n", data[0]);
   break;
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
