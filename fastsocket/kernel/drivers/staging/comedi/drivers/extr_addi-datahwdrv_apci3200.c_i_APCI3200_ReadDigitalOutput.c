
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int i_IobaseAddon; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 unsigned int inl (int ) ;
 int printk (char*) ;

int i_APCI3200_ReadDigitalOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_Temp;
 unsigned int ui_NoOfChannel;
 ui_NoOfChannel = CR_CHAN(insn->chanspec);
 ui_Temp = data[0];
 *data = inl(devpriv->i_IobaseAddon);
 if (ui_Temp == 0) {
  *data = (*data >> ui_NoOfChannel) & 0x1;
 }
 else {
  if (ui_Temp == 1) {
   if (data[1] < 0 || data[1] > 1) {
    printk("\nThe port selection is in error\n");
    return -EINVAL;
   }
   switch (ui_NoOfChannel) {
   case 2:
    *data = (*data >> (2 * data[1])) & 3;
    break;

   case 3:
    break;

   default:
    comedi_error(dev, " chan spec wrong");
    return -EINVAL;
    break;
   }
  }
  else {
   printk("\nSpecified channel not supported \n");
  }
 }
 return insn->n;
}
