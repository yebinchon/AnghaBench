
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int dio_config; } ;


 int DMM32AT_CNTRL ;
 int DMM32AT_DIOA ;
 unsigned char DMM32AT_DIOACC ;
 int DMM32AT_DIOB ;
 int DMM32AT_DIOC ;
 int DMM32AT_DIRA ;
 int DMM32AT_DIRB ;
 int DMM32AT_DIRCH ;
 int DMM32AT_DIRCL ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int dmm_inb (struct comedi_device*,int ) ;
 int dmm_outb (struct comedi_device*,int ,unsigned char) ;

__attribute__((used)) static int dmm32at_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 unsigned char diobits;

 if (insn->n != 2)
  return -EINVAL;



 if (data[0]) {
  s->state &= ~data[0];
  s->state |= data[0] & data[1];


 }


 dmm_outb(dev, DMM32AT_CNTRL, DMM32AT_DIOACC);


 if (((devpriv->dio_config & DMM32AT_DIRCL) == 0) ||
     ((devpriv->dio_config & DMM32AT_DIRCH) == 0)) {
  diobits = (s->state & 0x00ff0000) >> 16;
  dmm_outb(dev, DMM32AT_DIOC, diobits);
 }
 if ((devpriv->dio_config & DMM32AT_DIRB) == 0) {
  diobits = (s->state & 0x0000ff00) >> 8;
  dmm_outb(dev, DMM32AT_DIOB, diobits);
 }
 if ((devpriv->dio_config & DMM32AT_DIRA) == 0) {
  diobits = (s->state & 0x000000ff);
  dmm_outb(dev, DMM32AT_DIOA, diobits);
 }


 s->state = dmm_inb(dev, DMM32AT_DIOC);
 s->state <<= 8;
 s->state |= dmm_inb(dev, DMM32AT_DIOB);
 s->state <<= 8;
 s->state |= dmm_inb(dev, DMM32AT_DIOA);
 data[1] = s->state;
 return 2;
}
