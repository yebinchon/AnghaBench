
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAmcc; } ;


 scalar_t__ APCI1564_DIGITAL_IP ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 scalar_t__ inl (scalar_t__) ;
 unsigned int ui_InterruptStatus_1564 ;

int i_APCI1564_ReadMoreDigitalInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_PortValue = data[0];
 unsigned int ui_Mask = 0;
 unsigned int ui_NoOfChannels;

 ui_NoOfChannels = CR_CHAN(insn->chanspec);
 if (data[1] == 0) {
  *data = (unsigned int) inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP);
  switch (ui_NoOfChannels) {
  case 2:
   ui_Mask = 3;
   *data = (*data >> (2 * ui_PortValue)) & ui_Mask;
   break;
  case 4:
   ui_Mask = 15;
   *data = (*data >> (4 * ui_PortValue)) & ui_Mask;
   break;
  case 8:
   ui_Mask = 255;
   *data = (*data >> (8 * ui_PortValue)) & ui_Mask;
   break;
  case 16:
   ui_Mask = 65535;
   *data = (*data >> (16 * ui_PortValue)) & ui_Mask;
   break;
  case 31:
   break;
  default:
   comedi_error(dev, "Not a valid Channel number !!!\n");
   return -EINVAL;
   break;
  }
 }
 else {
  if (data[1] == 1) {
   *data = ui_InterruptStatus_1564;
  }
 }
 return insn->n;
}
