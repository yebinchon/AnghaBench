
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct local_info_t {int count; struct comedi_subdevice* s; struct comedi_device* dev; int interrupt_mode; scalar_t__ stop; } ;
struct comedi_subdevice {TYPE_1__* async; scalar_t__ private; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ convert_src; int flags; int chanlist_len; int* chanlist; scalar_t__ stop_src; int stop_arg; int scan_end_arg; int scan_begin_arg; int convert_arg; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 scalar_t__ AREF_DIFF ;
 scalar_t__ CR_AREF (int) ;
 int CR_CHAN (int) ;
 int CR_RANGE (int) ;
 scalar_t__ DAQP_AUX ;
 scalar_t__ DAQP_COMMAND ;
 int DAQP_COMMAND_ARM ;
 int DAQP_COMMAND_FIFO_DATA ;
 int DAQP_COMMAND_RSTF ;
 int DAQP_COMMAND_RSTQ ;
 scalar_t__ DAQP_CONTROL ;
 int DAQP_CONTROL_FIFO_INT_ENABLE ;
 int DAQP_CONTROL_PACER_5MHz ;
 int DAQP_CONTROL_TRIGGER_CONTINUOUS ;
 int DAQP_CONTROL_TRIGGER_INTERNAL ;
 scalar_t__ DAQP_FIFO ;
 int DAQP_FIFO_SIZE ;
 scalar_t__ DAQP_PACER_HIGH ;
 scalar_t__ DAQP_PACER_LOW ;
 scalar_t__ DAQP_PACER_MID ;
 scalar_t__ DAQP_SCANLIST ;
 int DAQP_SCANLIST_CHANNEL (int ) ;
 int DAQP_SCANLIST_DIFFERENTIAL ;
 int DAQP_SCANLIST_GAIN (int ) ;
 int DAQP_SCANLIST_START ;
 scalar_t__ DAQP_STATUS ;
 int DAQP_STATUS_EVENTS ;
 int EIO ;
 scalar_t__ TRIG_COUNT ;
 int TRIG_ROUND_MASK ;
 scalar_t__ TRIG_TIMER ;
 int buffer ;
 int daqp_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int daqp_ns_to_timer (int *,int) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static int daqp_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct local_info_t *local = (struct local_info_t *)s->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int counter = 100;
 int scanlist_start_on_every_entry;
 int threshold;

 int i;
 int v;

 if (local->stop) {
  return -EIO;
 }


 daqp_ai_cancel(dev, s);

 outb(0, dev->iobase + DAQP_AUX);


 outb(DAQP_COMMAND_RSTQ, dev->iobase + DAQP_COMMAND);
 if (cmd->convert_src == TRIG_TIMER) {
  int counter = daqp_ns_to_timer(&cmd->convert_arg,
            cmd->flags & TRIG_ROUND_MASK);
  outb(counter & 0xff, dev->iobase + DAQP_PACER_LOW);
  outb((counter >> 8) & 0xff, dev->iobase + DAQP_PACER_MID);
  outb((counter >> 16) & 0xff, dev->iobase + DAQP_PACER_HIGH);
  scanlist_start_on_every_entry = 1;
 } else {
  int counter = daqp_ns_to_timer(&cmd->scan_begin_arg,
            cmd->flags & TRIG_ROUND_MASK);
  outb(counter & 0xff, dev->iobase + DAQP_PACER_LOW);
  outb((counter >> 8) & 0xff, dev->iobase + DAQP_PACER_MID);
  outb((counter >> 16) & 0xff, dev->iobase + DAQP_PACER_HIGH);
  scanlist_start_on_every_entry = 0;
 }



 for (i = 0; i < cmd->chanlist_len; i++) {

  int chanspec = cmd->chanlist[i];



  v = DAQP_SCANLIST_CHANNEL(CR_CHAN(chanspec))
      | DAQP_SCANLIST_GAIN(CR_RANGE(chanspec));

  if (CR_AREF(chanspec) == AREF_DIFF) {
   v |= DAQP_SCANLIST_DIFFERENTIAL;
  }

  if (i == 0 || scanlist_start_on_every_entry) {
   v |= DAQP_SCANLIST_START;
  }

  outb(v & 0xff, dev->iobase + DAQP_SCANLIST);
  outb(v >> 8, dev->iobase + DAQP_SCANLIST);
 }
 if (cmd->stop_src == TRIG_COUNT) {
  local->count = cmd->stop_arg * cmd->scan_end_arg;
  threshold = 2 * local->count;
  while (threshold > DAQP_FIFO_SIZE * 3 / 4)
   threshold /= 2;
 } else {
  local->count = -1;
  threshold = DAQP_FIFO_SIZE / 2;
 }



 outb(DAQP_COMMAND_RSTF, dev->iobase + DAQP_COMMAND);
 outb(0x00, dev->iobase + DAQP_FIFO);
 outb(0x00, dev->iobase + DAQP_FIFO);

 outb((DAQP_FIFO_SIZE - threshold) & 0xff, dev->iobase + DAQP_FIFO);
 outb((DAQP_FIFO_SIZE - threshold) >> 8, dev->iobase + DAQP_FIFO);



 v = DAQP_CONTROL_TRIGGER_CONTINUOUS | DAQP_CONTROL_TRIGGER_INTERNAL
     | DAQP_CONTROL_PACER_5MHz | DAQP_CONTROL_FIFO_INT_ENABLE;

 outb(v, dev->iobase + DAQP_CONTROL);





 while (--counter
        && (inb(dev->iobase + DAQP_STATUS) & DAQP_STATUS_EVENTS)) ;
 if (!counter) {
  printk("daqp: couldn't clear interrupts in status register\n");
  return -1;
 }

 local->interrupt_mode = buffer;
 local->dev = dev;
 local->s = s;


 outb(DAQP_COMMAND_ARM | DAQP_COMMAND_FIFO_DATA,
      dev->iobase + DAQP_COMMAND);

 return 0;
}
