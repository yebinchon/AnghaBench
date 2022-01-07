
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_info_t {int eos; struct comedi_subdevice* s; struct comedi_device* dev; int interrupt_mode; scalar_t__ stop; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AREF_DIFF ;
 scalar_t__ CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAQP_AUX ;
 scalar_t__ DAQP_COMMAND ;
 int DAQP_COMMAND_ARM ;
 int DAQP_COMMAND_FIFO_DATA ;
 int DAQP_COMMAND_RSTF ;
 int DAQP_COMMAND_RSTQ ;
 scalar_t__ DAQP_CONTROL ;
 int DAQP_CONTROL_EOS_INT_ENABLE ;
 int DAQP_CONTROL_PACER_100kHz ;
 int DAQP_CONTROL_TRIGGER_INTERNAL ;
 int DAQP_CONTROL_TRIGGER_ONESHOT ;
 scalar_t__ DAQP_FIFO ;
 scalar_t__ DAQP_SCANLIST ;
 int DAQP_SCANLIST_CHANNEL (int ) ;
 int DAQP_SCANLIST_DIFFERENTIAL ;
 int DAQP_SCANLIST_GAIN (int ) ;
 int DAQP_SCANLIST_START ;
 scalar_t__ DAQP_STATUS ;
 int DAQP_STATUS_EVENTS ;
 int EINTR ;
 int EIO ;
 int daqp_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 scalar_t__ down_interruptible (int *) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int sema_init (int *,int ) ;
 int semaphore ;

__attribute__((used)) static int daqp_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 struct local_info_t *local = (struct local_info_t *)s->private;
 int i;
 int v;
 int counter = 10000;

 if (local->stop) {
  return -EIO;
 }


 daqp_ai_cancel(dev, s);

 outb(0, dev->iobase + DAQP_AUX);


 outb(DAQP_COMMAND_RSTQ, dev->iobase + DAQP_COMMAND);



 v = DAQP_SCANLIST_CHANNEL(CR_CHAN(insn->chanspec))
     | DAQP_SCANLIST_GAIN(CR_RANGE(insn->chanspec));

 if (CR_AREF(insn->chanspec) == AREF_DIFF) {
  v |= DAQP_SCANLIST_DIFFERENTIAL;
 }

 v |= DAQP_SCANLIST_START;

 outb(v & 0xff, dev->iobase + DAQP_SCANLIST);
 outb(v >> 8, dev->iobase + DAQP_SCANLIST);



 outb(DAQP_COMMAND_RSTF, dev->iobase + DAQP_COMMAND);



 v = DAQP_CONTROL_TRIGGER_ONESHOT | DAQP_CONTROL_TRIGGER_INTERNAL
     | DAQP_CONTROL_PACER_100kHz | DAQP_CONTROL_EOS_INT_ENABLE;

 outb(v, dev->iobase + DAQP_CONTROL);





 while (--counter
        && (inb(dev->iobase + DAQP_STATUS) & DAQP_STATUS_EVENTS)) ;
 if (!counter) {
  printk("daqp: couldn't clear interrupts in status register\n");
  return -1;
 }


 sema_init(&local->eos, 0);
 local->interrupt_mode = semaphore;
 local->dev = dev;
 local->s = s;

 for (i = 0; i < insn->n; i++) {


  outb(DAQP_COMMAND_ARM | DAQP_COMMAND_FIFO_DATA,
       dev->iobase + DAQP_COMMAND);



  if (down_interruptible(&local->eos))
   return -EINTR;

  data[i] = inb(dev->iobase + DAQP_FIFO);
  data[i] |= inb(dev->iobase + DAQP_FIFO) << 8;
  data[i] ^= 0x8000;
 }

 return insn->n;
}
