
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r592_device {int irq_lock; int dma_done; int detect_timer; } ;
typedef int irqreturn_t ;


 int EIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int R592_REG_MSC ;
 int R592_REG_MSC_FIFO_DMA_DONE ;
 int R592_REG_MSC_FIFO_DMA_ERR ;
 int R592_REG_MSC_IRQ_INSERT ;
 int R592_REG_MSC_IRQ_REMOVE ;
 int complete (int *) ;
 int dbg_verbose (char*) ;
 scalar_t__ jiffies ;
 int message (char*,...) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r592_read_reg (struct r592_device*,int ) ;
 int r592_stop_dma (struct r592_device*,int) ;
 int r592_write_reg (struct r592_device*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t r592_irq(int irq, void *data)
{
 struct r592_device *dev = (struct r592_device *)data;
 irqreturn_t ret = IRQ_NONE;
 u32 reg;
 u16 irq_enable, irq_status;
 unsigned long flags;
 int error;

 spin_lock_irqsave(&dev->irq_lock, flags);

 reg = r592_read_reg(dev, R592_REG_MSC);
 irq_enable = reg >> 16;
 irq_status = reg & 0xFFFF;


 reg &= ~irq_status;
 r592_write_reg(dev, R592_REG_MSC, reg);


 irq_status &= (irq_enable);



 if (irq_status & (R592_REG_MSC_IRQ_INSERT | R592_REG_MSC_IRQ_REMOVE)) {

  bool card_was_added = irq_status & R592_REG_MSC_IRQ_INSERT;
  ret = IRQ_HANDLED;

  message("IRQ: card %s", card_was_added ? "added" : "removed");

  mod_timer(&dev->detect_timer,
   jiffies + msecs_to_jiffies(card_was_added ? 500 : 50));
 }

 if (irq_status &
  (R592_REG_MSC_FIFO_DMA_DONE | R592_REG_MSC_FIFO_DMA_ERR)) {
  ret = IRQ_HANDLED;

  if (irq_status & R592_REG_MSC_FIFO_DMA_ERR) {
   message("IRQ: DMA error");
   error = -EIO;
  } else {
   dbg_verbose("IRQ: dma done");
   error = 0;
  }

  r592_stop_dma(dev, error);
  complete(&dev->dma_done);
 }

 spin_unlock_irqrestore(&dev->irq_lock, flags);
 return ret;
}
