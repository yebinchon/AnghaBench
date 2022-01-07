
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {scalar_t__ ai_count; scalar_t__ ai_cmd_running; scalar_t__ plx9080_iobase; } ;


 unsigned short ADC_DONE_BIT ;
 unsigned short ADC_INTR_PENDING_BIT ;
 unsigned short ADC_OVERRUN_BIT ;
 unsigned short ADC_STOP_BIT ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DEBUG_PRINT (char*,...) ;
 unsigned int ICS_DMA1_A ;
 scalar_t__ LAYOUT_4020 ;
 int PLX_CLEAR_DMA_INTR_BIT ;
 scalar_t__ PLX_DMA1_CS_REG ;
 int PLX_DMA_EN_BIT ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 int TRIG_WAKE_EOS ;
 TYPE_2__* board (struct comedi_device*) ;
 int cfc_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int comedi_error (struct comedi_device*,char*) ;
 int drain_dma_buffers (struct comedi_device*,int) ;
 int pio_drain_ai_fifo (struct comedi_device*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

void handle_ai_interrupt(struct comedi_device *dev, unsigned short status,
    unsigned int plx_status)
{
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 uint8_t dma1_status;
 unsigned long flags;


 if (status & ADC_OVERRUN_BIT) {
  comedi_error(dev, "fifo overrun");
  async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
 }

 spin_lock_irqsave(&dev->spinlock, flags);
 dma1_status = readb(priv(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
 if (plx_status & ICS_DMA1_A) {
  writeb((dma1_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
         priv(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
  DEBUG_PRINT("dma1 status 0x%x\n", dma1_status);

  if (dma1_status & PLX_DMA_EN_BIT) {
   drain_dma_buffers(dev, 1);
  }
  DEBUG_PRINT(" cleared dma ch1 interrupt\n");
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);

 if (status & ADC_DONE_BIT)
  DEBUG_PRINT("adc done interrupt\n");


 if ((status & ADC_DONE_BIT) ||
     ((cmd->flags & TRIG_WAKE_EOS) &&
      (status & ADC_INTR_PENDING_BIT) &&
      (board(dev)->layout != LAYOUT_4020))) {
  DEBUG_PRINT("pio fifo drain\n");
  spin_lock_irqsave(&dev->spinlock, flags);
  if (priv(dev)->ai_cmd_running) {
   spin_unlock_irqrestore(&dev->spinlock, flags);
   pio_drain_ai_fifo(dev);
  } else
   spin_unlock_irqrestore(&dev->spinlock, flags);
 }

 if ((cmd->stop_src == TRIG_COUNT && priv(dev)->ai_count <= 0) ||
     (cmd->stop_src == TRIG_EXT && (status & ADC_STOP_BIT))) {
  async->events |= COMEDI_CB_EOA;
 }

 cfc_handle_events(dev, s);
}
