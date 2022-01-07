
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; int attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_async {int events; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ dio_count; scalar_t__ plx9080_iobase; scalar_t__ hpdi_iobase; } ;


 scalar_t__ BOARD_STATUS_REG ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DEBUG_PRINT (char*,...) ;
 int ICS_DMA0_A ;
 int ICS_DMA1_A ;
 int ICS_LDIA ;
 int ICS_LIA ;
 scalar_t__ INTERRUPT_STATUS_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PLX_CLEAR_DMA_INTR_BIT ;
 scalar_t__ PLX_DBR_OUT_REG ;
 scalar_t__ PLX_DMA0_CS_REG ;
 scalar_t__ PLX_DMA1_CS_REG ;
 int PLX_DMA_EN_BIT ;
 scalar_t__ PLX_INTRCS_REG ;
 int RX_OVERRUN_BIT ;
 int RX_UNDERRUN_BIT ;
 int cfc_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int comedi_error (struct comedi_device*,char*) ;
 int drain_dma_buffers (struct comedi_device*,int ) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t handle_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 uint32_t hpdi_intr_status, hpdi_board_status;
 uint32_t plx_status;
 uint32_t plx_bits;
 uint8_t dma0_status, dma1_status;
 unsigned long flags;

 if (!dev->attached) {
  return IRQ_NONE;
 }

 plx_status = readl(priv(dev)->plx9080_iobase + PLX_INTRCS_REG);
 if ((plx_status & (ICS_DMA0_A | ICS_DMA1_A | ICS_LIA)) == 0) {
  return IRQ_NONE;
 }

 hpdi_intr_status = readl(priv(dev)->hpdi_iobase + INTERRUPT_STATUS_REG);
 hpdi_board_status = readl(priv(dev)->hpdi_iobase + BOARD_STATUS_REG);

 async->events = 0;

 if (hpdi_intr_status) {
  DEBUG_PRINT("hpdi: intr status 0x%x, ", hpdi_intr_status);
  writel(hpdi_intr_status,
         priv(dev)->hpdi_iobase + INTERRUPT_STATUS_REG);
 }

 spin_lock_irqsave(&dev->spinlock, flags);
 dma0_status = readb(priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
 if (plx_status & ICS_DMA0_A) {
  writeb((dma0_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
         priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);

  DEBUG_PRINT("dma0 status 0x%x\n", dma0_status);
  if (dma0_status & PLX_DMA_EN_BIT) {
   drain_dma_buffers(dev, 0);
  }
  DEBUG_PRINT(" cleared dma ch0 interrupt\n");
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);


 spin_lock_irqsave(&dev->spinlock, flags);
 dma1_status = readb(priv(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
 if (plx_status & ICS_DMA1_A) {
  writeb((dma1_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
         priv(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
  DEBUG_PRINT("dma1 status 0x%x\n", dma1_status);

  DEBUG_PRINT(" cleared dma ch1 interrupt\n");
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);


 if (plx_status & ICS_LDIA) {
  plx_bits = readl(priv(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
  writel(plx_bits, priv(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
  DEBUG_PRINT(" cleared local doorbell bits 0x%x\n", plx_bits);
 }

 if (hpdi_board_status & RX_OVERRUN_BIT) {
  comedi_error(dev, "rx fifo overrun");
  async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
  DEBUG_PRINT("dma0_status 0x%x\n",
       (int)readb(priv(dev)->plx9080_iobase +
           PLX_DMA0_CS_REG));
 }

 if (hpdi_board_status & RX_UNDERRUN_BIT) {
  comedi_error(dev, "rx fifo underrun");
  async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
 }

 if (priv(dev)->dio_count == 0)
  async->events |= COMEDI_CB_EOA;

 DEBUG_PRINT("board status 0x%x, ", hpdi_board_status);
 DEBUG_PRINT("plx status 0x%x\n", plx_status);
 if (async->events)
  DEBUG_PRINT(" events 0x%x\n", async->events);

 cfc_handle_events(dev, s);

 return IRQ_HANDLED;
}
