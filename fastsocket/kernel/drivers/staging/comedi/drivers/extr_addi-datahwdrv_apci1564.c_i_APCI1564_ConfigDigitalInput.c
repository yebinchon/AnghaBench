
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAmcc; int tsk_Current; } ;


 unsigned int ADDIDATA_ENABLE ;
 unsigned int ADDIDATA_OR ;
 scalar_t__ APCI1564_DIGITAL_IP ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE1 ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE2 ;
 scalar_t__ APCI1564_DIGITAL_IP_IRQ ;
 int current ;
 TYPE_1__* devpriv ;
 int outl (int,scalar_t__) ;

int i_APCI1564_ConfigDigitalInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 devpriv->tsk_Current = current;



 if (data[0] == ADDIDATA_ENABLE) {
  data[2] = data[2] << 4;
  data[3] = data[3] << 4;
  outl(data[2],
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_INTERRUPT_MODE1);
  outl(data[3],
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_INTERRUPT_MODE2);
  if (data[1] == ADDIDATA_OR) {
   outl(0x4,
    devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
    APCI1564_DIGITAL_IP_IRQ);
  }
  else {
   outl(0x6,
    devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
    APCI1564_DIGITAL_IP_IRQ);
  }
 }
 else {
  outl(0x0,
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_INTERRUPT_MODE1);
  outl(0x0,
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_INTERRUPT_MODE2);
  outl(0x0,
   devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
   APCI1564_DIGITAL_IP_IRQ);
 }

 return insn->n;
}
