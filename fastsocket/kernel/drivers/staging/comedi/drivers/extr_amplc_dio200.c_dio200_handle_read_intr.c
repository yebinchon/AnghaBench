
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dio200_subdev_intr {unsigned int enabled_isns; unsigned int valid_isns; scalar_t__ stopcount; int spinlock; int continuous; scalar_t__ active; int iobase; scalar_t__ has_int_sce; } ;
struct comedi_subdevice {TYPE_2__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int chanlist_len; int * chanlist; } ;
struct TYPE_4__ {unsigned int events; TYPE_1__ cmd; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_EOS ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ comedi_buf_put (TYPE_2__*,short) ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int dio200_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dio200_handle_read_intr(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct dio200_subdev_intr *subpriv = s->private;
 unsigned triggered;
 unsigned intstat;
 unsigned cur_enabled;
 unsigned int oldevents;
 unsigned long flags;

 triggered = 0;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 oldevents = s->async->events;
 if (subpriv->has_int_sce) {
  cur_enabled = subpriv->enabled_isns;
  while ((intstat = (inb(subpriv->iobase) & subpriv->valid_isns
       & ~triggered)) != 0) {
   triggered |= intstat;
   cur_enabled &= ~triggered;
   outb(cur_enabled, subpriv->iobase);
  }
 } else {




  triggered = subpriv->enabled_isns;
 }

 if (triggered) {






  cur_enabled = subpriv->enabled_isns;
  if (subpriv->has_int_sce) {
   outb(cur_enabled, subpriv->iobase);
  }

  if (subpriv->active) {







   if (triggered & subpriv->enabled_isns) {

    short val;
    unsigned int n, ch, len;

    val = 0;
    len = s->async->cmd.chanlist_len;
    for (n = 0; n < len; n++) {
     ch = CR_CHAN(s->async->cmd.chanlist[n]);
     if (triggered & (1U << ch)) {
      val |= (1U << n);
     }
    }

    if (comedi_buf_put(s->async, val)) {
     s->async->events |= (COMEDI_CB_BLOCK |
            COMEDI_CB_EOS);
    } else {

     dio200_stop_intr(dev, s);
     s->async->events |= COMEDI_CB_ERROR
         | COMEDI_CB_OVERFLOW;
     comedi_error(dev, "buffer overflow");
    }


    if (!subpriv->continuous) {

     if (subpriv->stopcount > 0) {
      subpriv->stopcount--;
      if (subpriv->stopcount == 0) {
       s->async->events |=
           COMEDI_CB_EOA;
       dio200_stop_intr(dev,
          s);
      }
     }
    }
   }
  }
 }
 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 if (oldevents != s->async->events) {
  comedi_event(dev, s);
 }

 return (triggered != 0);
}
