
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int dma_desc_phys_addr; int dio_count; scalar_t__ hpdi_iobase; scalar_t__ plx9080_iobase; scalar_t__ dma_desc_index; } ;


 int BOARD_CONTROL_REG ;
 scalar_t__ BOARD_STATUS_REG ;
 int DEBUG_PRINT (char*) ;
 scalar_t__ INTERRUPT_CONTROL_REG ;
 int PLX_CLEAR_DMA_INTR_BIT ;
 int PLX_DESC_IN_PCI_BIT ;
 scalar_t__ PLX_DMA0_CS_REG ;
 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ;
 scalar_t__ PLX_DMA0_LOCAL_ADDRESS_REG ;
 scalar_t__ PLX_DMA0_PCI_ADDRESS_REG ;
 scalar_t__ PLX_DMA0_TRANSFER_SIZE_REG ;
 int PLX_DMA_EN_BIT ;
 int PLX_DMA_START_BIT ;
 int PLX_INTR_TERM_COUNT ;
 int PLX_XFER_LOCAL_TO_PCI ;
 int RX_ENABLE_BIT ;
 int RX_FIFO_RESET_BIT ;
 int RX_FULL_INTR ;
 int RX_OVERRUN_BIT ;
 int RX_UNDERRUN_BIT ;
 scalar_t__ TRIG_COUNT ;
 int abort_dma (struct comedi_device*,int ) ;
 int hpdi_writel (struct comedi_device*,int ,int ) ;
 int intr_bit (int ) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int di_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 uint32_t bits;
 unsigned long flags;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 hpdi_writel(dev, RX_FIFO_RESET_BIT, BOARD_CONTROL_REG);

 DEBUG_PRINT("hpdi: in di_cmd\n");

 abort_dma(dev, 0);

 priv(dev)->dma_desc_index = 0;





 writel(0, priv(dev)->plx9080_iobase + PLX_DMA0_TRANSFER_SIZE_REG);
 writel(0, priv(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG);
 writel(0, priv(dev)->plx9080_iobase + PLX_DMA0_LOCAL_ADDRESS_REG);

 bits =
     priv(dev)->dma_desc_phys_addr | PLX_DESC_IN_PCI_BIT |
     PLX_INTR_TERM_COUNT | PLX_XFER_LOCAL_TO_PCI;
 writel(bits, priv(dev)->plx9080_iobase + PLX_DMA0_DESCRIPTOR_REG);


 spin_lock_irqsave(&dev->spinlock, flags);

 writeb(PLX_DMA_EN_BIT | PLX_DMA_START_BIT | PLX_CLEAR_DMA_INTR_BIT,
        priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 if (cmd->stop_src == TRIG_COUNT)
  priv(dev)->dio_count = cmd->stop_arg;
 else
  priv(dev)->dio_count = 1;


 writel(RX_UNDERRUN_BIT | RX_OVERRUN_BIT,
        priv(dev)->hpdi_iobase + BOARD_STATUS_REG);

 writel(intr_bit(RX_FULL_INTR),
        priv(dev)->hpdi_iobase + INTERRUPT_CONTROL_REG);

 DEBUG_PRINT("hpdi: starting rx\n");
 hpdi_writel(dev, RX_ENABLE_BIT, BOARD_CONTROL_REG);

 return 0;
}
