
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned char dio_config; } ;


 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int DMM32AT_CNTRL ;
 unsigned char DMM32AT_DIOACC ;
 int DMM32AT_DIOCONF ;
 unsigned char DMM32AT_DIRA ;
 unsigned char DMM32AT_DIRB ;
 unsigned char DMM32AT_DIRCH ;
 unsigned char DMM32AT_DIRCL ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int dmm_outb (struct comedi_device*,int ,unsigned char) ;

__attribute__((used)) static int dmm32at_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned char chanbit;
 int chan = CR_CHAN(insn->chanspec);

 if (insn->n != 1)
  return -EINVAL;

 if (chan < 8)
  chanbit = DMM32AT_DIRA;
 else if (chan < 16)
  chanbit = DMM32AT_DIRB;
 else if (chan < 20)
  chanbit = DMM32AT_DIRCL;
 else
  chanbit = DMM32AT_DIRCH;







 if (data[0] == COMEDI_OUTPUT) {
  devpriv->dio_config &= ~chanbit;
 } else {
  devpriv->dio_config |= chanbit;
 }

 dmm_outb(dev, DMM32AT_CNTRL, DMM32AT_DIOACC);

 dmm_outb(dev, DMM32AT_DIOCONF, devpriv->dio_config);

 return 1;
}
