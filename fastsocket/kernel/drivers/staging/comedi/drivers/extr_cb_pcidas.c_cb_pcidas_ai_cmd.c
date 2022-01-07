
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ convert_src; scalar_t__ scan_begin_src; int flags; scalar_t__ stop_src; int stop_arg; scalar_t__ start_src; int scan_begin_arg; int convert_arg; int * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int count; unsigned int adc_fifo_bits; scalar_t__ control_status; scalar_t__ adc_fifo; } ;


 scalar_t__ ADCFIFOCLR ;
 scalar_t__ ADCMUX_CONT ;
 scalar_t__ AREF_DIFF ;
 unsigned int BEGIN_SCAN (int ) ;
 unsigned int BURSTE ;
 scalar_t__ CALIBRATION_REG ;
 scalar_t__ CR_AREF (int ) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 unsigned int END_SCAN (int ) ;
 unsigned int EOAI ;
 unsigned int EXT_TRIGGER ;
 unsigned int GAIN_BITS (int) ;
 unsigned int INT ;
 unsigned int INTE ;
 scalar_t__ INT_ADCFIFO ;
 unsigned int INT_EOS ;
 unsigned int INT_FHF ;
 unsigned int INT_FNE ;
 unsigned int INT_MASK ;
 int IS_UNIPOLAR ;
 unsigned int LADFUL ;
 unsigned int PACER_EXT_RISE ;
 unsigned int PACER_INT ;
 unsigned int SE ;
 unsigned int SW_TRIGGER ;
 unsigned int TGEN ;
 scalar_t__ TRIG_CONTSTAT ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 scalar_t__ TRIG_TIMER ;
 int TRIG_WAKE_EOS ;
 unsigned int UNIP ;
 unsigned int XTRCL ;
 int cb_pcidas_load_counters (struct comedi_device*,int *,int) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;
 int printk (char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ai_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int bits;
 unsigned long flags;


 outw(0, devpriv->control_status + CALIBRATION_REG);

 outw(0, devpriv->control_status + TRIG_CONTSTAT);

 outw(0, devpriv->adc_fifo + ADCFIFOCLR);


 bits = BEGIN_SCAN(CR_CHAN(cmd->chanlist[0])) |
     END_SCAN(CR_CHAN(cmd->chanlist[cmd->chanlist_len - 1])) |
     GAIN_BITS(CR_RANGE(cmd->chanlist[0]));

 if (CR_RANGE(cmd->chanlist[0]) & IS_UNIPOLAR)
  bits |= UNIP;

 if (CR_AREF(cmd->chanlist[0]) != AREF_DIFF)
  bits |= SE;

 if (cmd->convert_src == TRIG_EXT || cmd->scan_begin_src == TRIG_EXT)
  bits |= PACER_EXT_RISE;
 else
  bits |= PACER_INT;
 outw(bits, devpriv->control_status + ADCMUX_CONT);






 if (cmd->convert_src == TRIG_TIMER)
  cb_pcidas_load_counters(dev, &cmd->convert_arg,
     cmd->flags & TRIG_ROUND_MASK);
 else if (cmd->scan_begin_src == TRIG_TIMER)
  cb_pcidas_load_counters(dev, &cmd->scan_begin_arg,
     cmd->flags & TRIG_ROUND_MASK);


 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->count = cmd->chanlist_len * cmd->stop_arg;
 }

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->adc_fifo_bits |= INTE;
 devpriv->adc_fifo_bits &= ~INT_MASK;
 if (cmd->flags & TRIG_WAKE_EOS) {
  if (cmd->convert_src == TRIG_NOW && cmd->chanlist_len > 1)
   devpriv->adc_fifo_bits |= INT_EOS;
  else
   devpriv->adc_fifo_bits |= INT_FNE;
 } else {
  devpriv->adc_fifo_bits |= INT_FHF;
 }




 outw(devpriv->adc_fifo_bits | EOAI | INT | LADFUL,
      devpriv->control_status + INT_ADCFIFO);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 bits = 0;
 if (cmd->start_src == TRIG_NOW)
  bits |= SW_TRIGGER;
 else if (cmd->start_src == TRIG_EXT)
  bits |= EXT_TRIGGER | TGEN | XTRCL;
 else {
  comedi_error(dev, "bug!");
  return -1;
 }
 if (cmd->convert_src == TRIG_NOW && cmd->chanlist_len > 1)
  bits |= BURSTE;
 outw(bits, devpriv->control_status + TRIG_CONTSTAT);




 return 0;
}
