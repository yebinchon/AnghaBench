
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 int CR_CHAN (int ) ;
 unsigned char DMM32AT_DACBUSY ;
 int DMM32AT_DACLSB ;
 int DMM32AT_DACMSB ;
 int DMM32AT_DACSTAT ;
 int ETIMEDOUT ;
 TYPE_1__* devpriv ;
 unsigned char dmm_inb (struct comedi_device*,int ) ;
 int dmm_outb (struct comedi_device*,int ,unsigned char) ;
 int printk (char*) ;

__attribute__((used)) static int dmm32at_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 unsigned char hi, lo, status;



 for (i = 0; i < insn->n; i++) {

  devpriv->ao_readback[chan] = data[i];


  lo = data[i] & 0x00ff;

  hi = (data[i] >> 8) + chan * (1 << 6);


  dmm_outb(dev, DMM32AT_DACLSB, lo);
  dmm_outb(dev, DMM32AT_DACMSB, hi);


  for (i = 0; i < 40000; i++) {
   status = dmm_inb(dev, DMM32AT_DACSTAT);
   if ((status & DMM32AT_DACBUSY) == 0)
    break;
  }
  if (i == 40000) {
   printk("timeout\n");
   return -ETIMEDOUT;
  }

  status = dmm_inb(dev, DMM32AT_DACMSB);

 }


 return i;
}
