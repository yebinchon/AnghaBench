
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int minor; } ;


 int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 int CR_RANGE (unsigned int) ;
 int comedi_error (struct comedi_device*,char*) ;
 int printk (char*,unsigned int,...) ;

__attribute__((used)) static int check_channel_list(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int *chanlist, unsigned int n_chan)
{
 unsigned int chansegment[16];
 unsigned int i, nowmustbechan, seglen, segpos;


 if (n_chan < 1) {
  comedi_error(dev, "range/channel list is empty!");
  return 0;
 }

 if (n_chan > 1) {

  chansegment[0] = chanlist[0];

  for (i = 1, seglen = 1; i < n_chan; i++, seglen++) {






   if (chanlist[0] == chanlist[i])
    break;
   nowmustbechan =
       (CR_CHAN(chansegment[i - 1]) + 1) % s->n_chan;
   if (nowmustbechan != CR_CHAN(chanlist[i])) {
    printk
        ("comedi%d: pcl818: channel list must be continous! chanlist[%i]=%d but must be %d or %d!\n",
         dev->minor, i, CR_CHAN(chanlist[i]),
         nowmustbechan, CR_CHAN(chanlist[0]));
    return 0;
   }

   chansegment[i] = chanlist[i];
  }


  for (i = 0, segpos = 0; i < n_chan; i++) {

   if (chanlist[i] != chansegment[i % seglen]) {
    printk
        ("comedi%d: pcl818: bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
         dev->minor, i, CR_CHAN(chansegment[i]),
         CR_RANGE(chansegment[i]),
         CR_AREF(chansegment[i]),
         CR_CHAN(chanlist[i % seglen]),
         CR_RANGE(chanlist[i % seglen]),
         CR_AREF(chansegment[i % seglen]));
    return 0;
   }
  }
 } else {
  seglen = 1;
 }
 printk("check_channel_list: seglen %d\n", seglen);
 return seglen;
}
