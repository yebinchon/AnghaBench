
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned long ulConvertionRate; } ;


 int ETIMEDOUT ;
 unsigned char MPC624_ADBUSY ;
 scalar_t__ MPC624_ADC ;
 int MPC624_ADCS ;
 int MPC624_ADSCK ;
 int MPC624_ADSDI ;
 int MPC624_ADSDO ;
 unsigned long MPC624_DMY_BIT ;
 unsigned long MPC624_EOC_BIT ;
 scalar_t__ MPC624_GNMUXCH ;
 unsigned long MPC624_SGN_BIT ;
 int TIMEOUT ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*,...) ;
 int udelay (int) ;

__attribute__((used)) static int mpc624_ai_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int n, i;
 unsigned long int data_in, data_out;
 unsigned char ucPort;


 outb(insn->chanspec, dev->iobase + MPC624_GNMUXCH);

 if (!insn->n) {
  printk("MPC624: Warning, no data to aquire\n");
  return 0;
 }

 for (n = 0; n < insn->n; n++) {

  outb(MPC624_ADSCK, dev->iobase + MPC624_ADC);
  udelay(1);
  outb(MPC624_ADCS | MPC624_ADSCK, dev->iobase + MPC624_ADC);
  udelay(1);
  outb(0, dev->iobase + MPC624_ADC);
  udelay(1);


  for (i = 0; i < TIMEOUT; i++) {
   ucPort = inb(dev->iobase + MPC624_ADC);
   if (ucPort & MPC624_ADBUSY)
    udelay(1000);
   else
    break;
  }
  if (i == TIMEOUT) {
   printk("MPC624: timeout (%dms)\n", TIMEOUT);
   data[n] = 0;
   return -ETIMEDOUT;
  }

  data_in = 0;
  data_out = devpriv->ulConvertionRate;
  udelay(1);
  for (i = 0; i < 32; i++) {

   outb(0, dev->iobase + MPC624_ADC);
   udelay(1);

   if (data_out & (1 << 31)) {

    outb(MPC624_ADSDI, dev->iobase + MPC624_ADC);
    udelay(1);

    outb(MPC624_ADSCK | MPC624_ADSDI,
         dev->iobase + MPC624_ADC);
   } else {


    outb(0, dev->iobase + MPC624_ADC);
    udelay(1);

    outb(MPC624_ADSCK, dev->iobase + MPC624_ADC);
   }

   udelay(1);
   data_in <<= 1;
   data_in |=
       (inb(dev->iobase + MPC624_ADC) & MPC624_ADSDO) >> 4;
   udelay(1);

   data_out <<= 1;
  }
  if (data_in & MPC624_EOC_BIT)
   printk("MPC624: EOC bit is set (data_in=%lu)!",
          data_in);
  if (data_in & MPC624_DMY_BIT)
   printk("MPC624: DMY bit is set (data_in=%lu)!",
          data_in);
  if (data_in & MPC624_SGN_BIT) {
   data_in &= 0x3FFFFFFF;
   data[n] = data_in;

  } else {

   data_in |= MPC624_SGN_BIT;
   data_in = ~data_in;
   data_in += 1;
   data_in &= ~(MPC624_EOC_BIT | MPC624_DMY_BIT);

   data_in = 0x20000000 - data_in;
   data[n] = data_in;
  }
 }


 return n;
}
