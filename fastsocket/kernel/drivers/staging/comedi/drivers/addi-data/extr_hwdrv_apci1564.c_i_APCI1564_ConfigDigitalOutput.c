
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int b_OutputMemoryStatus; int tsk_Current; scalar_t__ i_IobaseAmcc; } ;


 unsigned int ADDIDATA_DISABLE ;
 unsigned int ADDIDATA_ENABLE ;
 scalar_t__ APCI1564_DIGITAL_OP ;
 scalar_t__ APCI1564_DIGITAL_OP_INTERRUPT ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 int current ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int ui_InterruptData ;

int i_APCI1564_ConfigDigitalOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ul_Command = 0;

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
 if (data[1] == ADDIDATA_ENABLE) {
  ul_Command = ul_Command | 0x1;
 }
 else {
  ul_Command = ul_Command & 0xFFFFFFFE;
 }
 if (data[2] == ADDIDATA_ENABLE) {
  ul_Command = ul_Command | 0x2;
 }
 else {
  ul_Command = ul_Command & 0xFFFFFFFD;
 }
 outl(ul_Command,
  devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP +
  APCI1564_DIGITAL_OP_INTERRUPT);
 ui_InterruptData =
  inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP +
  APCI1564_DIGITAL_OP_INTERRUPT);
 devpriv->tsk_Current = current;
 return insn->n;
}
