
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ attached; scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int const dma_transfer_size; unsigned int count; short* dma_buffer; int dma; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DMA_TC_BIT ;
 scalar_t__ DMA_TC_CLEAR_REG ;
 int INTR_BIT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OVFL_BIT ;
 scalar_t__ STATUS_REG ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NONE ;
 int a2150_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int cfc_write_to_buffer (struct comedi_subdevice*,short) ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int comedi_error (struct comedi_device*,char*) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int const get_dma_residue (int ) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,unsigned int) ;
 int virt_to_bus (short*) ;

__attribute__((used)) static irqreturn_t a2150_interrupt(int irq, void *d)
{
 int i;
 int status;
 unsigned long flags;
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async;
 struct comedi_cmd *cmd;
 unsigned int max_points, num_points, residue, leftover;
 short dpnt;
 static const int sample_size = sizeof(devpriv->dma_buffer[0]);

 if (dev->attached == 0) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }

 async = s->async;
 async->events = 0;
 cmd = &async->cmd;

 status = inw(dev->iobase + STATUS_REG);

 if ((status & INTR_BIT) == 0) {
  comedi_error(dev, "spurious interrupt");
  return IRQ_NONE;
 }

 if (status & OVFL_BIT) {
  comedi_error(dev, "fifo overflow");
  a2150_cancel(dev, s);
  async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
 }

 if ((status & DMA_TC_BIT) == 0) {
  comedi_error(dev, "caught non-dma interrupt?  Aborting.");
  a2150_cancel(dev, s);
  async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
  comedi_event(dev, s);
  return IRQ_HANDLED;
 }

 flags = claim_dma_lock();
 disable_dma(devpriv->dma);


 clear_dma_ff(devpriv->dma);


 max_points = devpriv->dma_transfer_size / sample_size;




 residue = get_dma_residue(devpriv->dma) / sample_size;
 num_points = max_points - residue;
 if (devpriv->count < num_points && cmd->stop_src == TRIG_COUNT)
  num_points = devpriv->count;


 leftover = 0;
 if (cmd->stop_src == TRIG_NONE) {
  leftover = devpriv->dma_transfer_size / sample_size;
 } else if (devpriv->count > max_points) {
  leftover = devpriv->count - max_points;
  if (leftover > max_points)
   leftover = max_points;
 }




 if (residue)
  leftover = 0;

 for (i = 0; i < num_points; i++) {

  dpnt = devpriv->dma_buffer[i];

  dpnt ^= 0x8000;
  cfc_write_to_buffer(s, dpnt);
  if (cmd->stop_src == TRIG_COUNT) {
   if (--devpriv->count == 0) {
    a2150_cancel(dev, s);
    async->events |= COMEDI_CB_EOA;
    break;
   }
  }
 }

 if (leftover) {
  set_dma_addr(devpriv->dma, virt_to_bus(devpriv->dma_buffer));
  set_dma_count(devpriv->dma, leftover * sample_size);
  enable_dma(devpriv->dma);
 }
 release_dma_lock(flags);

 async->events |= COMEDI_CB_BLOCK;

 comedi_event(dev, s);


 outw(0x00, dev->iobase + DMA_TC_CLEAR_REG);

 return IRQ_HANDLED;
}
