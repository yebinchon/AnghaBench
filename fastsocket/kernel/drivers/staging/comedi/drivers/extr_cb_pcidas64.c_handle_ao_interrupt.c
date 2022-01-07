
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; struct comedi_subdevice* write_subdev; } ;
struct comedi_cmd {int dummy; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 unsigned short DAC_DONE_BIT ;
 int DEBUG_PRINT (char*,...) ;
 unsigned int ICS_DMA0_A ;
 int PLX_CLEAR_DMA_INTR_BIT ;
 scalar_t__ PLX_DMA0_CS_REG ;
 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ;
 scalar_t__ PLX_DMA0_PCI_ADDRESS_REG ;
 int PLX_DMA_DONE_BIT ;
 int PLX_DMA_EN_BIT ;
 scalar_t__ ao_dma_needs_restart (struct comedi_device*,int) ;
 scalar_t__ ao_stopped_by_error (struct comedi_device*,struct comedi_cmd*) ;
 int cfc_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int load_ao_dma (struct comedi_device*,struct comedi_cmd*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int restart_ao_dma (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void handle_ao_interrupt(struct comedi_device *dev,
    unsigned short status, unsigned int plx_status)
{
 struct comedi_subdevice *s = dev->write_subdev;
 struct comedi_async *async;
 struct comedi_cmd *cmd;
 uint8_t dma0_status;
 unsigned long flags;


 if (s == ((void*)0))
  return;
 async = s->async;
 cmd = &async->cmd;


 spin_lock_irqsave(&dev->spinlock, flags);
 dma0_status = readb(priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
 if (plx_status & ICS_DMA0_A) {
  if ((dma0_status & PLX_DMA_EN_BIT)
      && !(dma0_status & PLX_DMA_DONE_BIT))
   writeb(PLX_DMA_EN_BIT | PLX_CLEAR_DMA_INTR_BIT,
          priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
  else
   writeb(PLX_CLEAR_DMA_INTR_BIT,
          priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
  spin_unlock_irqrestore(&dev->spinlock, flags);
  DEBUG_PRINT("dma0 status 0x%x\n", dma0_status);
  if (dma0_status & PLX_DMA_EN_BIT) {
   load_ao_dma(dev, cmd);

   if (ao_dma_needs_restart(dev, dma0_status))
    restart_ao_dma(dev);
  }
  DEBUG_PRINT(" cleared dma ch0 interrupt\n");
 } else
  spin_unlock_irqrestore(&dev->spinlock, flags);

 if ((status & DAC_DONE_BIT)) {
  async->events |= COMEDI_CB_EOA;
  if (ao_stopped_by_error(dev, cmd))
   async->events |= COMEDI_CB_ERROR;
  DEBUG_PRINT("plx dma0 desc reg 0x%x\n",
       readl(priv(dev)->plx9080_iobase +
      PLX_DMA0_DESCRIPTOR_REG));
  DEBUG_PRINT("plx dma0 address reg 0x%x\n",
       readl(priv(dev)->plx9080_iobase +
      PLX_DMA0_PCI_ADDRESS_REG));
 }
 cfc_handle_events(dev, s);
}
