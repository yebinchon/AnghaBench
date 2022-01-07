
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ scan_begin_src; unsigned int scan_begin_arg; int flags; int stop_src; int start_src; int stop_arg; int * chanlist; } ;
struct TYPE_4__ {unsigned int ao_enab; unsigned int* ao_scan_order; int daccon; int* hwrange; unsigned int cached_div1; unsigned int cached_div2; int ao_stop_continuous; int ao_spinlock; scalar_t__ iobase1; int intsce; int ao_stop_count; } ;
struct TYPE_3__ {int * inttrig; struct comedi_cmd cmd; } ;


 int CLK_10MHZ ;
 int CLK_CONFIG (int,int ) ;
 int CLK_OUTNM1 ;
 int COMBINE (int,int,int) ;
 unsigned int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int EINVAL ;
 int GAT_CONFIG (int,int ) ;
 int GAT_VCC ;
 scalar_t__ PCI224_DACCEN ;
 scalar_t__ PCI224_DACCON ;
 int PCI224_DACCON_FIFOINTR_MASK ;
 int PCI224_DACCON_FIFOINTR_NHALF ;
 int PCI224_DACCON_FIFORESET ;
 int PCI224_DACCON_POLAR_MASK ;
 int PCI224_DACCON_TRIG_MASK ;
 int PCI224_DACCON_TRIG_NONE ;
 int PCI224_DACCON_VREF_MASK ;
 int PCI224_INTR_EXT ;
 scalar_t__ PCI224_INT_SCE ;
 scalar_t__ PCI224_Z2_CT0 ;
 scalar_t__ PCI224_ZCLK_SCE ;
 scalar_t__ PCI224_ZGAT_SCE ;
 int TIMEBASE_10MHZ ;




 int TRIG_ROUND_MASK ;


 scalar_t__ TRIG_TIMER ;
 TYPE_2__* devpriv ;
 int i8254_load (scalar_t__,int ,int,unsigned int,int) ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci224_ao_inttrig_start ;
 int pci224_cascade_ns_to_timer (int,unsigned int*,unsigned int*,unsigned int*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci224_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int range;
 unsigned int i, j;
 unsigned int ch;
 unsigned int rank;
 unsigned long flags;


 if (cmd->chanlist == ((void*)0) || cmd->chanlist_len == 0) {
  return -EINVAL;
 }


 devpriv->ao_enab = 0;

 for (i = 0; i < cmd->chanlist_len; i++) {
  ch = CR_CHAN(cmd->chanlist[i]);
  devpriv->ao_enab |= 1U << ch;
  rank = 0;
  for (j = 0; j < cmd->chanlist_len; j++) {
   if (CR_CHAN(cmd->chanlist[j]) < ch) {
    rank++;
   }
  }
  devpriv->ao_scan_order[rank] = i;
 }


 outw(devpriv->ao_enab, dev->iobase + PCI224_DACCEN);


 range = CR_RANGE(cmd->chanlist[0]);
 devpriv->daccon = COMBINE(devpriv->daccon,
      (devpriv->
       hwrange[range] | PCI224_DACCON_TRIG_NONE |
       PCI224_DACCON_FIFOINTR_NHALF),
      (PCI224_DACCON_POLAR_MASK |
       PCI224_DACCON_VREF_MASK |
       PCI224_DACCON_TRIG_MASK |
       PCI224_DACCON_FIFOINTR_MASK));
 outw(devpriv->daccon | PCI224_DACCON_FIFORESET,
      dev->iobase + PCI224_DACCON);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  unsigned int div1, div2, round;
  unsigned int ns = cmd->scan_begin_arg;
  int round_mode = cmd->flags & TRIG_ROUND_MASK;


  switch (round_mode) {
  case 129:
  default:
   round = TIMEBASE_10MHZ / 2;
   break;
  case 130:
   round = 0;
   break;
  case 128:
   round = TIMEBASE_10MHZ - 1;
   break;
  }

  div2 = cmd->scan_begin_arg / TIMEBASE_10MHZ;
  div2 += (round + cmd->scan_begin_arg % TIMEBASE_10MHZ) /
      TIMEBASE_10MHZ;
  if (div2 <= 0x10000) {

   if (div2 < 2)
    div2 = 2;
   div2 &= 0xffff;
   div1 = 1;
  } else {

   div1 = devpriv->cached_div1;
   div2 = devpriv->cached_div2;
   pci224_cascade_ns_to_timer(TIMEBASE_10MHZ, &div1, &div2,
         &ns, round_mode);
  }






  outb(GAT_CONFIG(0, GAT_VCC),
       devpriv->iobase1 + PCI224_ZGAT_SCE);
  if (div1 == 1) {

   outb(CLK_CONFIG(0, CLK_10MHZ),
        devpriv->iobase1 + PCI224_ZCLK_SCE);
  } else {


   outb(GAT_CONFIG(2, GAT_VCC),
        devpriv->iobase1 + PCI224_ZGAT_SCE);

   outb(CLK_CONFIG(2, CLK_10MHZ),
        devpriv->iobase1 + PCI224_ZCLK_SCE);

   i8254_load(devpriv->iobase1 + PCI224_Z2_CT0, 0,
       2, div1, 2);

   outb(CLK_CONFIG(0, CLK_OUTNM1),
        devpriv->iobase1 + PCI224_ZCLK_SCE);
  }

  i8254_load(devpriv->iobase1 + PCI224_Z2_CT0, 0, 0, div2, 2);
 }




 switch (cmd->stop_src) {
 case 133:

  devpriv->ao_stop_continuous = 0;
  devpriv->ao_stop_count = cmd->stop_arg;
  break;
 default:

  devpriv->ao_stop_continuous = 1;
  devpriv->ao_stop_count = 0;
  break;
 }




 switch (cmd->start_src) {
 case 131:
  spin_lock_irqsave(&devpriv->ao_spinlock, flags);
  s->async->inttrig = &pci224_ao_inttrig_start;
  spin_unlock_irqrestore(&devpriv->ao_spinlock, flags);
  break;
 case 132:

  spin_lock_irqsave(&devpriv->ao_spinlock, flags);
  devpriv->intsce |= PCI224_INTR_EXT;
  outb(devpriv->intsce, devpriv->iobase1 + PCI224_INT_SCE);
  spin_unlock_irqrestore(&devpriv->ao_spinlock, flags);
  break;
 }

 return 0;
}
