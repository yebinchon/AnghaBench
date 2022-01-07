
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; scalar_t__ b_OutputMemoryStatus; } ;


 scalar_t__ APCI3501_DIGITAL_OP ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI3501_WriteDigitalOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_Temp, ui_Temp1;
 unsigned int ui_NoOfChannel = CR_CHAN(insn->chanspec);
 if (devpriv->b_OutputMemoryStatus) {
  ui_Temp = inl(devpriv->iobase + APCI3501_DIGITAL_OP);
 }
 else {
  ui_Temp = 0;
 }
 if (data[3] == 0) {
  if (data[1] == 0) {
   data[0] = (data[0] << ui_NoOfChannel) | ui_Temp;
   outl(data[0], devpriv->iobase + APCI3501_DIGITAL_OP);
  }
  else {
   if (data[1] == 1) {
    data[0] = (data[0] << (2 * data[2])) | ui_Temp;
    outl(data[0],
     devpriv->iobase + APCI3501_DIGITAL_OP);
   }
   else {
    printk("\nSpecified channel not supported\n");
   }
  }
 }
 else {
  if (data[3] == 1) {
   if (data[1] == 0) {
    data[0] = ~data[0] & 0x1;
    ui_Temp1 = 1;
    ui_Temp1 = ui_Temp1 << ui_NoOfChannel;
    ui_Temp = ui_Temp | ui_Temp1;
    data[0] =
     (data[0] << ui_NoOfChannel) ^
     0xffffffff;
    data[0] = data[0] & ui_Temp;
    outl(data[0],
     devpriv->iobase + APCI3501_DIGITAL_OP);
   }
   else {
    if (data[1] == 1) {
     data[0] = ~data[0] & 0x3;
     ui_Temp1 = 3;
     ui_Temp1 = ui_Temp1 << 2 * data[2];
     ui_Temp = ui_Temp | ui_Temp1;
     data[0] =
      ((data[0] << (2 *
        data[2])) ^
      0xffffffff) & ui_Temp;
     outl(data[0],
      devpriv->iobase +
      APCI3501_DIGITAL_OP);
    }
    else {
     printk("\nSpecified channel not supported\n");
    }
   }
  }
  else {
   printk("\nSpecified functionality does not exist\n");
   return -EINVAL;
  }
 }
 return insn->n;
}
