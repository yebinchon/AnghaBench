
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ attached; int spinlock; scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_4__ {scalar_t__ dma_chan; int control_state; int dma_transfer_size; int adc_byte_count; int current_buffer; scalar_t__ timer_mode; int * dma_buffer; int * dma_buffer_addr; } ;
struct TYPE_3__ {int size; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 scalar_t__ DAS1600_CONV ;
 int DEBUG_PRINT (char*) ;
 int DMA_ENABLE ;
 scalar_t__ TRIG_COUNT ;
 int cfc_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int cfc_write_array_to_buffer (struct comedi_subdevice*,int ,int) ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (scalar_t__) ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int disable_dma_on_even (struct comedi_device*) ;
 int enable_dma (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (scalar_t__,int ) ;
 int set_dma_count (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static void das16_interrupt(struct comedi_device *dev)
{
 unsigned long dma_flags, spin_flags;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async;
 struct comedi_cmd *cmd;
 int num_bytes, residue;
 int buffer_index;

 if (dev->attached == 0) {
  comedi_error(dev, "premature interrupt");
  return;
 }

 async = s->async;
 cmd = &async->cmd;

 if (devpriv->dma_chan == 0) {
  comedi_error(dev, "interrupt with no dma channel?");
  return;
 }

 spin_lock_irqsave(&dev->spinlock, spin_flags);
 if ((devpriv->control_state & DMA_ENABLE) == 0) {
  spin_unlock_irqrestore(&dev->spinlock, spin_flags);
  DEBUG_PRINT("interrupt while dma disabled?\n");
  return;
 }

 dma_flags = claim_dma_lock();
 clear_dma_ff(devpriv->dma_chan);
 residue = disable_dma_on_even(dev);


 if (residue > devpriv->dma_transfer_size) {
  comedi_error(dev, "residue > transfer size!\n");
  async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
  num_bytes = 0;
 } else
  num_bytes = devpriv->dma_transfer_size - residue;

 if (cmd->stop_src == TRIG_COUNT && num_bytes >= devpriv->adc_byte_count) {
  num_bytes = devpriv->adc_byte_count;
  async->events |= COMEDI_CB_EOA;
 }

 buffer_index = devpriv->current_buffer;
 devpriv->current_buffer = (devpriv->current_buffer + 1) % 2;
 devpriv->adc_byte_count -= num_bytes;


 if (cmd->stop_src == TRIG_COUNT && devpriv->timer_mode == 0 &&
     devpriv->dma_transfer_size > devpriv->adc_byte_count)
  devpriv->dma_transfer_size = devpriv->adc_byte_count;


 if ((async->events & COMEDI_CB_EOA) == 0) {
  set_dma_addr(devpriv->dma_chan,
        devpriv->dma_buffer_addr[devpriv->current_buffer]);
  set_dma_count(devpriv->dma_chan, devpriv->dma_transfer_size);
  enable_dma(devpriv->dma_chan);

  if (thisboard->size > 0x400 && devpriv->timer_mode == 0) {
   outb(0x00, dev->iobase + DAS1600_CONV);
  }
 }
 release_dma_lock(dma_flags);

 spin_unlock_irqrestore(&dev->spinlock, spin_flags);

 cfc_write_array_to_buffer(s,
      devpriv->dma_buffer[buffer_index], num_bytes);

 cfc_handle_events(dev, s);
}
