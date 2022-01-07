
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int spinlock; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;


 int PLX_CLEAR_DMA_INTR_BIT ;
 scalar_t__ PLX_DMA0_CS_REG ;
 scalar_t__ PLX_DMA1_CS_REG ;
 int PLX_DMA_EN_BIT ;
 int PLX_DMA_START_BIT ;
 TYPE_1__* priv (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static inline void dma_start_sync(struct comedi_device *dev,
      unsigned int channel)
{
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 if (channel)
  writeb(PLX_DMA_EN_BIT | PLX_DMA_START_BIT |
         PLX_CLEAR_DMA_INTR_BIT,
         priv(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
 else
  writeb(PLX_DMA_EN_BIT | PLX_DMA_START_BIT |
         PLX_CLEAR_DMA_INTR_BIT,
         priv(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
