
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; int attached; } ;
struct comedi_cmd {int chanlist_len; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int events; struct comedi_cmd cmd; } ;
struct TYPE_3__ {int ai_scans_left; } ;


 int COMEDI_CB_EOA ;
 unsigned char DMM32AT_ADINT ;
 int DMM32AT_AILSB ;
 int DMM32AT_AIMSB ;
 int DMM32AT_CNTRL ;
 int DMM32AT_INTCLOCK ;
 int DMM32AT_INTRESET ;
 int IRQ_HANDLED ;
 int comedi_buf_put (TYPE_2__*,unsigned int) ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 void* dmm_inb (struct comedi_device*,int ) ;
 int dmm_outb (struct comedi_device*,int ,int) ;

__attribute__((used)) static irqreturn_t dmm32at_isr(int irq, void *d)
{
 unsigned char intstat;
 unsigned int samp;
 unsigned short msb, lsb;
 int i;
 struct comedi_device *dev = d;

 if (!dev->attached) {
  comedi_error(dev, "spurious interrupt");
  return IRQ_HANDLED;
 }

 intstat = dmm_inb(dev, DMM32AT_INTCLOCK);

 if (intstat & DMM32AT_ADINT) {
  struct comedi_subdevice *s = dev->read_subdev;
  struct comedi_cmd *cmd = &s->async->cmd;

  for (i = 0; i < cmd->chanlist_len; i++) {

   lsb = dmm_inb(dev, DMM32AT_AILSB);
   msb = dmm_inb(dev, DMM32AT_AIMSB);


   samp = ((msb ^ 0x0080) << 8) + lsb;
   comedi_buf_put(s->async, samp);
  }

  if (devpriv->ai_scans_left != 0xffffffff) {
   devpriv->ai_scans_left--;
   if (devpriv->ai_scans_left == 0) {

    dmm_outb(dev, DMM32AT_INTCLOCK, 0x0);

    s->async->events |= COMEDI_CB_EOA;
   }

  }

  comedi_event(dev, s);
 }


 dmm_outb(dev, DMM32AT_CNTRL, DMM32AT_INTRESET);
 return IRQ_HANDLED;
}
