
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ irq; scalar_t__ iobase; } ;
struct comedi_cmd {unsigned int chanlist_len; int flags; scalar_t__ start_src; scalar_t__ convert_src; int convert_arg; int * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int control_state; int initial_hw_count; scalar_t__ adc_count; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS16M1_8254_FIRST ;
 scalar_t__ DAS16M1_CLEAR_INTR ;
 scalar_t__ DAS16M1_CS ;
 scalar_t__ DAS16M1_INTR_CONTROL ;
 scalar_t__ DAS16M1_QUEUE_ADDR ;
 scalar_t__ DAS16M1_QUEUE_DATA ;
 int EXT_PACER ;
 unsigned int EXT_TRIG_BIT ;
 int INTE ;
 int INT_PACER ;
 int PACER_MASK ;
 unsigned int Q_CHAN (int ) ;
 unsigned int Q_RANGE (int ) ;
 scalar_t__ TRIG_EXT ;
 int TRIG_ROUND_MASK ;
 scalar_t__ TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 int das16m1_set_pacer (struct comedi_device*,int ,int) ;
 TYPE_1__* devpriv ;
 int i8254_load (scalar_t__,int ,int,int ,int) ;
 int i8254_read (scalar_t__,int ,int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int das16m1_cmd_exec(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int byte, i;

 if (dev->irq == 0) {
  comedi_error(dev, "irq required to execute comedi_cmd");
  return -1;
 }


 devpriv->control_state &= ~INTE & ~PACER_MASK;
 outb(devpriv->control_state, dev->iobase + DAS16M1_INTR_CONTROL);


 devpriv->adc_count = 0;



 i8254_load(dev->iobase + DAS16M1_8254_FIRST, 0, 1, 0, 2);


 devpriv->initial_hw_count =
     i8254_read(dev->iobase + DAS16M1_8254_FIRST, 0, 1);

 for (i = 0; i < cmd->chanlist_len; i++) {
  outb(i, dev->iobase + DAS16M1_QUEUE_ADDR);
  byte =
      Q_CHAN(CR_CHAN(cmd->chanlist[i])) |
      Q_RANGE(CR_RANGE(cmd->chanlist[i]));
  outb(byte, dev->iobase + DAS16M1_QUEUE_DATA);
 }


 cmd->convert_arg =
     das16m1_set_pacer(dev, cmd->convert_arg,
         cmd->flags & TRIG_ROUND_MASK);


 byte = 0;


 if (cmd->start_src == TRIG_EXT && cmd->convert_src != TRIG_EXT) {
  byte |= EXT_TRIG_BIT;
 }
 outb(byte, dev->iobase + DAS16M1_CS);

 outb(0, dev->iobase + DAS16M1_CLEAR_INTR);


 devpriv->control_state &= ~PACER_MASK;
 if (cmd->convert_src == TRIG_TIMER) {
  devpriv->control_state |= INT_PACER;
 } else {
  devpriv->control_state |= EXT_PACER;
 }
 devpriv->control_state |= INTE;
 outb(devpriv->control_state, dev->iobase + DAS16M1_INTR_CONTROL);

 return 0;
}
