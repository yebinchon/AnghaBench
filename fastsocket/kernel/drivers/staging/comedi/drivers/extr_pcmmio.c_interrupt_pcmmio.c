
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct comedi_subdevice {TYPE_7__* async; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_9__ {unsigned int chanlist_len; int * chanlist; } ;
struct TYPE_14__ {unsigned int events; TYPE_2__ cmd; } ;
struct TYPE_13__ {TYPE_1__* asics; } ;
struct TYPE_10__ {int asic; unsigned int asic_chan; int num_asic_chans; unsigned int first_chan; unsigned int enabled_mask; scalar_t__ stop_count; int spinlock; int continuous; scalar_t__ active; } ;
struct TYPE_11__ {TYPE_3__ intr; } ;
struct TYPE_12__ {TYPE_4__ dio; } ;
struct TYPE_8__ {int irq; unsigned long iobase; int spinlock; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_EOS ;
 unsigned int CR_CHAN (int ) ;
 int INTR_PORTS_PER_ASIC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MAX_ASICS ;
 int PAGE_INT_ID ;
 scalar_t__ REG_INT_ID0 ;
 scalar_t__ REG_INT_PENDING ;
 scalar_t__ comedi_buf_put (TYPE_7__*,short) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_6__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int pcmmio_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int printk (char*,int,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_5__* subpriv ;
 int switch_page (struct comedi_device*,int,int ) ;

__attribute__((used)) static irqreturn_t interrupt_pcmmio(int irq, void *d)
{
 int asic, got1 = 0;
 struct comedi_device *dev = (struct comedi_device *)d;

 for (asic = 0; asic < MAX_ASICS; ++asic) {
  if (irq == devpriv->asics[asic].irq) {
   unsigned long flags;
   unsigned triggered = 0;
   unsigned long iobase = devpriv->asics[asic].iobase;

   unsigned char int_pend;

   spin_lock_irqsave(&devpriv->asics[asic].spinlock,
       flags);

   int_pend = inb(iobase + REG_INT_PENDING) & 0x07;

   if (int_pend) {
    int port;
    for (port = 0; port < INTR_PORTS_PER_ASIC;
         ++port) {
     if (int_pend & (0x1 << port)) {
      unsigned char
          io_lines_with_edges = 0;
      switch_page(dev, asic,
           PAGE_INT_ID);
      io_lines_with_edges =
          inb(iobase +
       REG_INT_ID0 + port);

      if (io_lines_with_edges)

       outb(0, iobase +
            REG_INT_ID0 +
            port);

      triggered |=
          io_lines_with_edges <<
          port * 8;
     }
    }

    ++got1;
   }

   spin_unlock_irqrestore(&devpriv->asics[asic].spinlock,
            flags);

   if (triggered) {
    struct comedi_subdevice *s;

    printk
        ("PCMMIO DEBUG: got edge detect interrupt %d asic %d which_chans: %06x\n",
         irq, asic, triggered);
    for (s = dev->subdevices + 2;
         s < dev->subdevices + dev->n_subdevices;
         ++s) {
     if (subpriv->dio.intr.asic == asic) {
      unsigned long flags;
      unsigned oldevents;

      spin_lock_irqsave(&subpriv->dio.
          intr.spinlock,
          flags);

      oldevents = s->async->events;

      if (subpriv->dio.intr.active) {
       unsigned mytrig =
           ((triggered >>
             subpriv->dio.intr.asic_chan)
            &
            ((0x1 << subpriv->
              dio.intr.
              num_asic_chans) -
             1)) << subpriv->
           dio.intr.first_chan;
       if (mytrig &
           subpriv->dio.
           intr.enabled_mask) {
        unsigned int val
            = 0;
        unsigned int n,
            ch, len;

        len =
            s->
            async->cmd.chanlist_len;
        for (n = 0;
             n < len;
             n++) {
         ch = CR_CHAN(s->async->cmd.chanlist[n]);
         if (mytrig & (1U << ch)) {
          val |= (1U << n);
         }
        }

        if (comedi_buf_put(s->async, ((short *)&val)[0])
            &&
            comedi_buf_put
            (s->async,
             ((short *)
              &val)[1]))
        {
         s->async->events |= (COMEDI_CB_BLOCK | COMEDI_CB_EOS);
        } else {


         pcmmio_stop_intr
             (dev,
              s);
        }


        if (!subpriv->dio.intr.continuous) {

         if (subpriv->dio.intr.stop_count > 0) {
          subpriv->dio.intr.stop_count--;
          if (subpriv->dio.intr.stop_count == 0) {
           s->async->events |= COMEDI_CB_EOA;

           pcmmio_stop_intr
               (dev,
                s);
          }
         }
        }
       }
      }

      spin_unlock_irqrestore
          (&subpriv->dio.intr.
           spinlock, flags);

      if (oldevents !=
          s->async->events) {
       comedi_event(dev, s);
      }

     }

    }
   }

  }
 }
 if (!got1)
  return IRQ_NONE;
 return IRQ_HANDLED;
}
