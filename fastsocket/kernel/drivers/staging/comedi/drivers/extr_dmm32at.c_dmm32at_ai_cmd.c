
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int n_chan; TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned char chanlist_len; scalar_t__ stop_src; int stop_arg; int scan_begin_arg; int * chanlist; } ;
struct TYPE_4__ {int ai_scans_left; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DMM32AT_ADINT ;
 int DMM32AT_AICONF ;
 int DMM32AT_AIHIGH ;
 int DMM32AT_AILOW ;
 int DMM32AT_AIRBACK ;
 int DMM32AT_CNTRL ;
 int DMM32AT_CONV ;
 int DMM32AT_FIFOCNTRL ;
 int DMM32AT_FIFORESET ;
 int DMM32AT_INTCLOCK ;
 int DMM32AT_INTRESET ;
 int DMM32AT_SCANENABLE ;
 unsigned char DMM32AT_STATUS ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ TRIG_COUNT ;
 TYPE_2__* devpriv ;
 int* dmm32at_rangebits ;
 int dmm32at_setaitimer (struct comedi_device*,int ) ;
 unsigned char dmm_inb (struct comedi_device*,int ) ;
 int dmm_outb (struct comedi_device*,int ,int) ;
 int printk (char*) ;

__attribute__((used)) static int dmm32at_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int i, range;
 unsigned char chanlo, chanhi, status;

 if (!cmd->chanlist)
  return -EINVAL;


 chanlo = CR_CHAN(cmd->chanlist[0]) & (s->n_chan - 1);
 chanhi = chanlo + cmd->chanlist_len - 1;
 if (chanhi >= s->n_chan)
  return -EINVAL;
 range = CR_RANGE(cmd->chanlist[0]);


 dmm_outb(dev, DMM32AT_FIFOCNTRL, DMM32AT_FIFORESET);


 dmm_outb(dev, DMM32AT_FIFOCNTRL, DMM32AT_SCANENABLE);


 dmm_outb(dev, DMM32AT_AILOW, chanlo);
 dmm_outb(dev, DMM32AT_AIHIGH, chanhi);


 dmm_outb(dev, DMM32AT_AICONF, dmm32at_rangebits[range]);


 dmm_outb(dev, DMM32AT_CNTRL, DMM32AT_INTRESET);

 if (cmd->stop_src == TRIG_COUNT)
  devpriv->ai_scans_left = cmd->stop_arg;
 else {
  devpriv->ai_scans_left = 0xffffffff;
 }


 for (i = 0; i < 40000; i++) {
  status = dmm_inb(dev, DMM32AT_AIRBACK);
  if ((status & DMM32AT_STATUS) == 0)
   break;
 }
 if (i == 40000) {
  printk("timeout\n");
  return -ETIMEDOUT;
 }

 if (devpriv->ai_scans_left > 1) {

  dmm32at_setaitimer(dev, cmd->scan_begin_arg);
 } else {

  dmm_outb(dev, DMM32AT_INTCLOCK, DMM32AT_ADINT);
  dmm_outb(dev, DMM32AT_CONV, 0xff);
 }
 return 0;

}
