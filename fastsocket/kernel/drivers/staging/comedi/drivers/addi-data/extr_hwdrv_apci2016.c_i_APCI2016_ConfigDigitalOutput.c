
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int b_OutputMemoryStatus; } ;


 int ADDIDATA_DISABLE ;
 int ADDIDATA_ENABLE ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;

int i_APCI2016_ConfigDigitalOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 if ((data[0] != 0) && (data[0] != 1)) {
  comedi_error(dev,
   "Not a valid Data !!! ,Data should be 1 or 0\n");
  return -EINVAL;
 }
 if (data[0]) {
  devpriv->b_OutputMemoryStatus = ADDIDATA_ENABLE;
 }
 else {
  devpriv->b_OutputMemoryStatus = ADDIDATA_DISABLE;
 }
 return insn->n;
}
