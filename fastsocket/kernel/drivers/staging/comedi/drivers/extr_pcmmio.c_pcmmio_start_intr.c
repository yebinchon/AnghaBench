
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int irq; scalar_t__ iobase; } ;
struct comedi_cmd {unsigned int chanlist_len; int * chanlist; } ;
struct TYPE_12__ {TYPE_4__* asics; } ;
struct TYPE_8__ {scalar_t__ stop_count; int active; int asic; unsigned int enabled_mask; int num_asic_chans; int asic_chan; int first_chan; int continuous; } ;
struct TYPE_9__ {TYPE_2__ intr; } ;
struct TYPE_11__ {TYPE_3__ dio; } ;
struct TYPE_10__ {scalar_t__ iobase; } ;
struct TYPE_7__ {struct comedi_cmd cmd; int events; } ;


 int CHANS_PER_PORT ;
 int COMEDI_CB_EOA ;
 scalar_t__ CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int PAGE_ENAB ;
 int PAGE_POL ;
 scalar_t__ REG_ENAB0 ;
 TYPE_6__* devpriv ;
 int outb (unsigned int,scalar_t__) ;
 TYPE_5__* subpriv ;
 int switch_page (struct comedi_device*,int,int ) ;

__attribute__((used)) static int pcmmio_start_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 if (!subpriv->dio.intr.continuous && subpriv->dio.intr.stop_count == 0) {

  s->async->events |= COMEDI_CB_EOA;
  subpriv->dio.intr.active = 0;
  return 1;
 } else {
  unsigned bits = 0, pol_bits = 0, n;
  int nports, firstport, asic, port;
  struct comedi_cmd *cmd = &s->async->cmd;

  asic = subpriv->dio.intr.asic;
  if (asic < 0)
   return 1;

  subpriv->dio.intr.enabled_mask = 0;
  subpriv->dio.intr.active = 1;
  nports = subpriv->dio.intr.num_asic_chans / CHANS_PER_PORT;
  firstport = subpriv->dio.intr.asic_chan / CHANS_PER_PORT;
  if (cmd->chanlist) {
   for (n = 0; n < cmd->chanlist_len; n++) {
    bits |= (1U << CR_CHAN(cmd->chanlist[n]));
    pol_bits |= (CR_AREF(cmd->chanlist[n])
          || CR_RANGE(cmd->
        chanlist[n]) ? 1U : 0U)
        << CR_CHAN(cmd->chanlist[n]);
   }
  }
  bits &= ((0x1 << subpriv->dio.intr.num_asic_chans) -
    1) << subpriv->dio.intr.first_chan;
  subpriv->dio.intr.enabled_mask = bits;

  {
   unsigned char b;

   outb(1 << 4, dev->iobase + 3);

   b = dev->irq & ((1 << 4) - 1);
   outb(b, dev->iobase + 2);

  }

  switch_page(dev, asic, PAGE_ENAB);
  for (port = firstport; port < firstport + nports; ++port) {
   unsigned enab =
       bits >> (subpriv->dio.intr.first_chan + (port -
             firstport)
         * 8) & 0xff, pol =
       pol_bits >> (subpriv->dio.intr.first_chan +
      (port - firstport) * 8) & 0xff;

   outb(enab,
        devpriv->asics[asic].iobase + REG_ENAB0 + port);
   switch_page(dev, asic, PAGE_POL);
   outb(pol,
        devpriv->asics[asic].iobase + REG_ENAB0 + port);
  }
 }
 return 0;
}
