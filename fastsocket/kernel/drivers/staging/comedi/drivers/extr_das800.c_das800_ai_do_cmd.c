
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; int irq; } ;
struct TYPE_4__ {int chanlist_len; int stop_src; int stop_arg; scalar_t__ start_src; int convert_src; int flags; int convert_arg; int * chanlist; } ;
struct comedi_async {scalar_t__ events; TYPE_1__ cmd; } ;
struct TYPE_6__ {int count; int forever; int divisor2; int divisor1; } ;
struct TYPE_5__ {int resolution; } ;


 int CASC ;
 int CONV_CONTROL ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS800_CONV_CONTROL ;
 scalar_t__ DAS800_GAIN ;
 scalar_t__ DAS800_SCAN_LIMITS ;
 int DTEN ;
 int EACS ;
 int IEOC ;
 int ITE ;
 int SCAN_LIMITS ;
 int TIMER_BASE ;



 int TRIG_ROUND_MASK ;

 int comedi_error (struct comedi_device*,char*) ;
 int das800_set_frequency (struct comedi_device*) ;
 TYPE_3__* devpriv ;
 int disable_das800 (struct comedi_device*) ;
 int enable_das800 (struct comedi_device*) ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,int *,int) ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int das800_ai_do_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 int startChan, endChan, scan, gain;
 int conv_bits;
 unsigned long irq_flags;
 struct comedi_async *async = s->async;

 if (!dev->irq) {
  comedi_error(dev,
        "no irq assigned for das-800, cannot do hardware conversions");
  return -1;
 }

 disable_das800(dev);


 startChan = CR_CHAN(async->cmd.chanlist[0]);
 endChan = (startChan + async->cmd.chanlist_len - 1) % 8;
 scan = (endChan << 3) | startChan;

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(SCAN_LIMITS, dev->iobase + DAS800_GAIN);
 outb(scan, dev->iobase + DAS800_SCAN_LIMITS);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);


 gain = CR_RANGE(async->cmd.chanlist[0]);
 if (thisboard->resolution == 12 && gain > 0)
  gain += 0x7;
 gain &= 0xf;
 outb(gain, dev->iobase + DAS800_GAIN);

 switch (async->cmd.stop_src) {
 case 131:
  devpriv->count = async->cmd.stop_arg * async->cmd.chanlist_len;
  devpriv->forever = 0;
  break;
 case 129:
  devpriv->forever = 1;
  devpriv->count = 0;
  break;
 default:
  break;
 }




 conv_bits = 0;
 conv_bits |= EACS | IEOC;
 if (async->cmd.start_src == 130)
  conv_bits |= DTEN;
 switch (async->cmd.convert_src) {
 case 128:
  conv_bits |= CASC | ITE;

  i8253_cascade_ns_to_timer_2div(TIMER_BASE, &(devpriv->divisor1),
            &(devpriv->divisor2),
            &(async->cmd.convert_arg),
            async->cmd.
            flags & TRIG_ROUND_MASK);
  if (das800_set_frequency(dev) < 0) {
   comedi_error(dev, "Error setting up counters");
   return -1;
  }
  break;
 case 130:
  break;
 default:
  break;
 }

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(CONV_CONTROL, dev->iobase + DAS800_GAIN);
 outb(conv_bits, dev->iobase + DAS800_CONV_CONTROL);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
 async->events = 0;
 enable_das800(dev);
 return 0;
}
