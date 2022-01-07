
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DMM32AT_AICONF ;
 int DMM32AT_AIHIGH ;
 int DMM32AT_AILOW ;
 int DMM32AT_AILSB ;
 int DMM32AT_AIMSB ;
 int DMM32AT_AIRBACK ;
 int DMM32AT_AISTAT ;
 int DMM32AT_CONV ;
 int DMM32AT_FIFOCNTRL ;
 int DMM32AT_FIFORESET ;
 unsigned char DMM32AT_STATUS ;
 int ETIMEDOUT ;
 int* dmm32at_rangebits ;
 void* dmm_inb (struct comedi_device*,int ) ;
 int dmm_outb (struct comedi_device*,int ,int) ;
 int printk (char*) ;

__attribute__((used)) static int dmm32at_ai_rinsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int n, i;
 unsigned int d;
 unsigned char status;
 unsigned short msb, lsb;
 unsigned char chan;
 int range;



 chan = CR_CHAN(insn->chanspec) & (s->n_chan - 1);
 range = CR_RANGE(insn->chanspec);




 dmm_outb(dev, DMM32AT_FIFOCNTRL, DMM32AT_FIFORESET);


 dmm_outb(dev, DMM32AT_AILOW, chan);
 dmm_outb(dev, DMM32AT_AIHIGH, chan);

 dmm_outb(dev, DMM32AT_AICONF, dmm32at_rangebits[range]);


 for (i = 0; i < 40000; i++) {
  status = dmm_inb(dev, DMM32AT_AIRBACK);
  if ((status & DMM32AT_STATUS) == 0)
   break;
 }
 if (i == 40000) {
  printk("timeout\n");
  return -ETIMEDOUT;
 }


 for (n = 0; n < insn->n; n++) {

  dmm_outb(dev, DMM32AT_CONV, 0xff);

  for (i = 0; i < 40000; i++) {
   status = dmm_inb(dev, DMM32AT_AISTAT);
   if ((status & DMM32AT_STATUS) == 0)
    break;
  }
  if (i == 40000) {
   printk("timeout\n");
   return -ETIMEDOUT;
  }


  lsb = dmm_inb(dev, DMM32AT_AILSB);
  msb = dmm_inb(dev, DMM32AT_AIMSB);







  d = ((msb ^ 0x0080) << 8) + lsb;

  data[n] = d;
 }


 return n;
}
