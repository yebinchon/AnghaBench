
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_src; scalar_t__ stop_src; int stop_arg; int flags; int scan_begin_arg; int * chanlist; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int ao_count; int ao_control_bits; int ao_divisor2; scalar_t__ pacer_counter_dio; int ao_divisor1; scalar_t__ ao_registers; scalar_t__ control_status; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAC8254 ;
 scalar_t__ DACFIFOCLR ;
 int DAC_CHAN_EN (int ) ;
 scalar_t__ DAC_CSR ;
 int DAC_PACER_EXT_RISE ;
 int DAC_PACER_INT ;
 int DAC_RANGE (int ,int ) ;
 int TIMER_BASE ;
 scalar_t__ TRIG_COUNT ;


 int cb_pcidas_ao_inttrig ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,int *,int ) ;
 int i8254_load (scalar_t__,int ,int,int ,int) ;
 int outw (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int i;
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 for (i = 0; i < cmd->chanlist_len; i++) {

  devpriv->ao_control_bits |=
      DAC_CHAN_EN(CR_CHAN(cmd->chanlist[i]));

  devpriv->ao_control_bits |= DAC_RANGE(CR_CHAN(cmd->chanlist[i]),
            CR_RANGE(cmd->
              chanlist[i]));
 }


 outw(devpriv->ao_control_bits, devpriv->control_status + DAC_CSR);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 outw(0, devpriv->ao_registers + DACFIFOCLR);


 if (cmd->scan_begin_src == 128) {
  i8253_cascade_ns_to_timer_2div(TIMER_BASE,
            &(devpriv->ao_divisor1),
            &(devpriv->ao_divisor2),
            &(cmd->scan_begin_arg),
            cmd->flags);


  i8254_load(devpriv->pacer_counter_dio + DAC8254, 0, 1,
      devpriv->ao_divisor1, 2);
  i8254_load(devpriv->pacer_counter_dio + DAC8254, 0, 2,
      devpriv->ao_divisor2, 2);
 }

 if (cmd->stop_src == TRIG_COUNT) {
  devpriv->ao_count = cmd->chanlist_len * cmd->stop_arg;
 }

 spin_lock_irqsave(&dev->spinlock, flags);
 switch (cmd->scan_begin_src) {
 case 128:
  devpriv->ao_control_bits |= DAC_PACER_INT;
  break;
 case 129:
  devpriv->ao_control_bits |= DAC_PACER_EXT_RISE;
  break;
 default:
  spin_unlock_irqrestore(&dev->spinlock, flags);
  comedi_error(dev, "error setting dac pacer source");
  return -1;
  break;
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);

 async->inttrig = cb_pcidas_ao_inttrig;

 return 0;
}
