
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ attached; scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int status1_bits; int (* read_byte ) (scalar_t__) ;int status2_bits; scalar_t__ current_transfer; scalar_t__ count; int (* write_byte ) (int,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ register_layout; } ;


 int A1_TC_BIT ;
 scalar_t__ ADC_CLEAR_REG ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DATA_AVAIL_BIT ;
 int DMATC_BIT ;
 int FNHF_BIT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OVERFLOW_BIT ;
 int OVERRUN_BIT ;
 scalar_t__ STATUS1_REG ;
 scalar_t__ STATUS2_REG ;
 int TIMER_BIT ;
 scalar_t__ TIMER_CLEAR_REG ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 int handle_isa_dma (struct comedi_device*) ;
 scalar_t__ isa_dma_transfer ;
 scalar_t__ labpc_1200_layout ;
 int labpc_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int labpc_drain_dregs (struct comedi_device*) ;
 int labpc_drain_fifo (struct comedi_device*) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static irqreturn_t labpc_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async;
 struct comedi_cmd *cmd;

 if (dev->attached == 0) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }

 async = s->async;
 cmd = &async->cmd;
 async->events = 0;


 devpriv->status1_bits = devpriv->read_byte(dev->iobase + STATUS1_REG);
 if (thisboard->register_layout == labpc_1200_layout)
  devpriv->status2_bits =
      devpriv->read_byte(dev->iobase + STATUS2_REG);

 if ((devpriv->status1_bits & (DMATC_BIT | TIMER_BIT | OVERFLOW_BIT |
          OVERRUN_BIT | DATA_AVAIL_BIT)) == 0
     && (devpriv->status2_bits & A1_TC_BIT) == 0
     && (devpriv->status2_bits & FNHF_BIT)) {
  return IRQ_NONE;
 }

 if (devpriv->status1_bits & OVERRUN_BIT) {

  devpriv->write_byte(0x1, dev->iobase + ADC_CLEAR_REG);
  async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
  comedi_event(dev, s);
  comedi_error(dev, "overrun");
  return IRQ_HANDLED;
 }

 if (devpriv->current_transfer == isa_dma_transfer) {

  if (devpriv->status1_bits & DMATC_BIT ||
      (thisboard->register_layout == labpc_1200_layout
       && devpriv->status2_bits & A1_TC_BIT)) {
   handle_isa_dma(dev);
  }
 } else
  labpc_drain_fifo(dev);

 if (devpriv->status1_bits & TIMER_BIT) {
  comedi_error(dev, "handled timer interrupt?");

  devpriv->write_byte(0x1, dev->iobase + TIMER_CLEAR_REG);
 }

 if (devpriv->status1_bits & OVERFLOW_BIT) {

  devpriv->write_byte(0x1, dev->iobase + ADC_CLEAR_REG);
  async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
  comedi_event(dev, s);
  comedi_error(dev, "overflow");
  return IRQ_HANDLED;
 }

 if (cmd->stop_src == TRIG_EXT) {
  if (devpriv->status2_bits & A1_TC_BIT) {
   labpc_drain_dregs(dev);
   labpc_cancel(dev, s);
   async->events |= COMEDI_CB_EOA;
  }
 }


 if (cmd->stop_src == TRIG_COUNT) {
  if (devpriv->count == 0) {
   labpc_cancel(dev, s);
   async->events |= COMEDI_CB_EOA;
  }
 }

 comedi_event(dev, s);
 return IRQ_HANDLED;
}
