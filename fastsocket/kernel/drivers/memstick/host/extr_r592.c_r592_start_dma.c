
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r592_device {int irq_lock; TYPE_1__* req; } ;
struct TYPE_2__ {int sg; } ;


 int DMA_IRQ_ACK_MASK ;
 int DMA_IRQ_EN_MASK ;
 int R592_FIFO_DMA ;
 int R592_FIFO_DMA_SETTINGS ;
 int R592_FIFO_DMA_SETTINGS_DIR ;
 int R592_FIFO_DMA_SETTINGS_EN ;
 int R592_REG_MSC ;
 int r592_clear_reg_mask (struct r592_device*,int ,int ) ;
 int r592_read_reg (struct r592_device*,int ) ;
 int r592_set_reg_mask (struct r592_device*,int ,int ) ;
 int r592_write_reg (struct r592_device*,int ,int ) ;
 int sg_dma_address (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void r592_start_dma(struct r592_device *dev, bool is_write)
{
 unsigned long flags;
 u32 reg;
 spin_lock_irqsave(&dev->irq_lock, flags);


 r592_clear_reg_mask(dev, R592_REG_MSC, DMA_IRQ_ACK_MASK);
 r592_set_reg_mask(dev, R592_REG_MSC, DMA_IRQ_EN_MASK);


 r592_write_reg(dev, R592_FIFO_DMA, sg_dma_address(&dev->req->sg));


 reg = r592_read_reg(dev, R592_FIFO_DMA_SETTINGS);
 reg |= R592_FIFO_DMA_SETTINGS_EN;

 if (!is_write)
  reg |= R592_FIFO_DMA_SETTINGS_DIR;
 else
  reg &= ~R592_FIFO_DMA_SETTINGS_DIR;
 r592_write_reg(dev, R592_FIFO_DMA_SETTINGS, reg);

 spin_unlock_irqrestore(&dev->irq_lock, flags);
}
