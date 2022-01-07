
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int b_OutputMemoryStatus; scalar_t__ b_DigitalOutputRegister; } ;


 int APCI3120_DISABLE ;
 int APCI3120_ENABLE ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 scalar_t__ ui_Temp ;

int i_APCI3120_InsnConfigDigitalOutput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{

 if ((data[0] != 0) && (data[0] != 1)) {
  comedi_error(dev,
   "Not a valid Data !!! ,Data should be 1 or 0\n");
  return -EINVAL;
 }
 if (data[0]) {
  devpriv->b_OutputMemoryStatus = APCI3120_ENABLE;

 } else {
  devpriv->b_OutputMemoryStatus = APCI3120_DISABLE;
  devpriv->b_DigitalOutputRegister = 0;
 }
 if (!devpriv->b_OutputMemoryStatus) {
  ui_Temp = 0;

 }

 return insn->n;
}
