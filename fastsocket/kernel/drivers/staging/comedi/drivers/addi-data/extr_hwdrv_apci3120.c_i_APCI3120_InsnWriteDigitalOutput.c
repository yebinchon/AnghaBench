
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int b_DigitalOutputRegister; scalar_t__ iobase; } ;
struct TYPE_3__ {int i_NbrDoChannel; } ;


 scalar_t__ APCI3120_DIGITAL_OUTPUT ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int outb (unsigned int,scalar_t__) ;
 int printk (char*) ;
 TYPE_1__* this_board ;

int i_APCI3120_InsnWriteDigitalOutput(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{

 unsigned int ui_Temp1;

 unsigned int ui_NoOfChannel = CR_CHAN(insn->chanspec);

 if ((data[0] != 0) && (data[0] != 1)) {
  comedi_error(dev,
   "Not a valid Data !!! ,Data should be 1 or 0\n");
  return -EINVAL;
 }
 if ((ui_NoOfChannel > (this_board->i_NbrDoChannel - 1))
  || (ui_NoOfChannel < 0)) {
  comedi_error(dev,
   "This board doesn't have specified channel !!! \n");
  return -EINVAL;
 }

 switch (data[1]) {
 case 1:
  data[0] = (data[0] << ui_NoOfChannel);

  data[0] = (data[0] << 4) | devpriv->b_DigitalOutputRegister;
  break;

 case 2:
  data[0] = ~data[0] & 0x1;
  ui_Temp1 = 1;
  ui_Temp1 = ui_Temp1 << ui_NoOfChannel;
  ui_Temp1 = ui_Temp1 << 4;

  devpriv->b_DigitalOutputRegister =
   devpriv->b_DigitalOutputRegister | ui_Temp1;

  data[0] = (data[0] << ui_NoOfChannel) ^ 0xf;
  data[0] = data[0] << 4;

  data[0] = data[0] & devpriv->b_DigitalOutputRegister;
  break;
 default:
  printk("\nThe parameter passed is in error \n");
  return -EINVAL;
 }
 outb(data[0], devpriv->iobase + APCI3120_DIGITAL_OUTPUT);


 devpriv->b_DigitalOutputRegister = data[0] & 0xf0;
 return insn->n;

}
