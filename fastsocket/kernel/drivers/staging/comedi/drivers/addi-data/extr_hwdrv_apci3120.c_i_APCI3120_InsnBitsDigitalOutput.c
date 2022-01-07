
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int b_DigitalOutputRegister; scalar_t__ iobase; } ;
struct TYPE_3__ {unsigned int i_DoMaxdata; } ;


 scalar_t__ APCI3120_DIGITAL_OUTPUT ;
 int EINVAL ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int outb (unsigned int,scalar_t__) ;
 int printk (char*) ;
 TYPE_1__* this_board ;

int i_APCI3120_InsnBitsDigitalOutput(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 if ((data[0] > this_board->i_DoMaxdata) || (data[0] < 0)) {

  comedi_error(dev, "Data is not valid !!! \n");
  return -EINVAL;
 }

 switch (data[1]) {
 case 1:
  data[0] = (data[0] << 4) | devpriv->b_DigitalOutputRegister;
  break;

 case 2:
  data[0] = data[0];
  break;
 default:
  printk("\nThe parameter passed is in error \n");
  return -EINVAL;
 }
 outb(data[0], devpriv->iobase + APCI3120_DIGITAL_OUTPUT);

 devpriv->b_DigitalOutputRegister = data[0] & 0xF0;

 return insn->n;

}
