
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; scalar_t__ b_OutputMemoryStatus; } ;


 scalar_t__ APCI2016_DIGITAL_OP ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 unsigned int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI2016_WriteDigitalOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_NoOfChannel;
 unsigned int ui_Temp, ui_Temp1;
 ui_NoOfChannel = CR_CHAN(insn->chanspec);
 if ((ui_NoOfChannel < 0) || (ui_NoOfChannel > 15)) {
  comedi_error(dev,
   "Invalid Channel Numbers !!!, Channel Numbers must be between 0 and 15\n");
  return -EINVAL;
 }
 if (devpriv->b_OutputMemoryStatus) {
  ui_Temp = inw(devpriv->iobase + APCI2016_DIGITAL_OP);
 }
 else {
  ui_Temp = 0;
 }
 if ((data[1] != 0) && (data[1] != 1)) {
  comedi_error(dev,
   "Invalid Data[1] value !!!, Data[1] should be 0 or 1\n");
  return -EINVAL;
 }

 if (data[3] == 0) {
  if (data[1] == 0) {
   data[0] = (data[0] << ui_NoOfChannel) | ui_Temp;
   outw(data[0], devpriv->iobase + APCI2016_DIGITAL_OP);
  }
  else {
   if (data[1] == 1) {
    switch (ui_NoOfChannel) {
    case 2:
     data[0] =
      (data[0] << (2 *
       data[2])) | ui_Temp;
     break;
    case 4:
     data[0] =
      (data[0] << (4 *
       data[2])) | ui_Temp;
     break;
    case 8:
     data[0] =
      (data[0] << (8 *
       data[2])) | ui_Temp;
     break;
    case 15:
     data[0] = data[0] | ui_Temp;
     break;
    default:
     comedi_error(dev, " chan spec wrong");
     return -EINVAL;
    }
    outw(data[0],
     devpriv->iobase + APCI2016_DIGITAL_OP);
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
    data[0] = (data[0] << ui_NoOfChannel) ^ 0xffff;
    data[0] = data[0] & ui_Temp;
    outw(data[0],
     devpriv->iobase + APCI2016_DIGITAL_OP);
   }
   else {
    if (data[1] == 1) {
     switch (ui_NoOfChannel) {
     case 2:
      data[0] = ~data[0] & 0x3;
      ui_Temp1 = 3;
      ui_Temp1 =
       ui_Temp1 << 2 * data[2];
      ui_Temp = ui_Temp | ui_Temp1;
      data[0] =
       ((data[0] << (2 *
         data
         [2])) ^
       0xffff) & ui_Temp;
      break;
     case 4:
      data[0] = ~data[0] & 0xf;
      ui_Temp1 = 15;
      ui_Temp1 =
       ui_Temp1 << 4 * data[2];
      ui_Temp = ui_Temp | ui_Temp1;
      data[0] =
       ((data[0] << (4 *
         data
         [2])) ^
       0xffff) & ui_Temp;
      break;
     case 8:
      data[0] = ~data[0] & 0xff;
      ui_Temp1 = 255;
      ui_Temp1 =
       ui_Temp1 << 8 * data[2];
      ui_Temp = ui_Temp | ui_Temp1;
      data[0] =
       ((data[0] << (8 *
         data
         [2])) ^
       0xffff) & ui_Temp;
      break;
     case 15:
      break;
     default:
      comedi_error(dev,
       " chan spec wrong");
      return -EINVAL;
     }
     outw(data[0],
      devpriv->iobase +
      APCI2016_DIGITAL_OP);
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
