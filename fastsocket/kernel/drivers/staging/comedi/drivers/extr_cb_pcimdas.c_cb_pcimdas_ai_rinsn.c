
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ BADR2; scalar_t__ BADR3; } ;
struct TYPE_3__ {int ai_diff_chans; int ai_se_chans; } ;


 int CR_CHAN (int ) ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 TYPE_2__* devpriv ;
 int inb (scalar_t__) ;
 unsigned int inw (scalar_t__) ;
 int outb (unsigned short,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int printk (char*) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int cb_pcimdas_ai_rinsn(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n, i;
 unsigned int d;
 unsigned int busy;
 int chan = CR_CHAN(insn->chanspec);
 unsigned short chanlims;
 int maxchans;




 if ((inb(devpriv->BADR3 + 2) & 0x20) == 0)
  maxchans = thisboard->ai_diff_chans;
 else
  maxchans = thisboard->ai_se_chans;

 if (chan > (maxchans - 1))
  return -ETIMEDOUT;


 d = inb(devpriv->BADR3 + 5);
 if ((d & 0x03) > 0) {
  d = d & 0xfd;
  outb(d, devpriv->BADR3 + 5);
 }
 outb(0x01, devpriv->BADR3 + 6);
 outb(0x00, devpriv->BADR3 + 7);


 chanlims = chan | (chan << 4);
 outb(chanlims, devpriv->BADR3 + 0);


 for (n = 0; n < insn->n; n++) {

  outw(0, devpriv->BADR2 + 0);





  for (i = 0; i < 1000; i++) {
   busy = inb(devpriv->BADR3 + 2) & 0x80;
   if (!busy)
    break;
  }
  if (i == 1000) {
   printk("timeout\n");
   return -ETIMEDOUT;
  }

  d = inw(devpriv->BADR2 + 0);




  data[n] = d;
 }


 return n;
}
