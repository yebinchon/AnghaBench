
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI3501_DIGITAL_IP ;
 unsigned int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int printk (char*) ;

int i_APCI3501_ReadDigitalInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_Temp;
 unsigned int ui_NoOfChannel;
 ui_NoOfChannel = CR_CHAN(insn->chanspec);
 ui_Temp = data[0];
 *data = inl(devpriv->iobase + APCI3501_DIGITAL_IP);
 if (ui_Temp == 0) {
  *data = (*data >> ui_NoOfChannel) & 0x1;
 }
 else {
  if (ui_Temp == 1) {

   *data = *data & 0x3;
  }
  else {
   printk("\nSpecified channel not supported \n");
  }
 }
 return insn->n;
}
