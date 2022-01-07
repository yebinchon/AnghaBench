
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IRQENABLE_L0 ;
 int cpu_class_is_omap2 () ;
 int dma_chan_lock ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void omap2_enable_irq_lch(int lch)
{
 u32 val;
 unsigned long flags;

 if (!cpu_class_is_omap2())
  return;

 spin_lock_irqsave(&dma_chan_lock, flags);
 val = dma_read(IRQENABLE_L0);
 val |= 1 << lch;
 dma_write(val, IRQENABLE_L0);
 spin_unlock_irqrestore(&dma_chan_lock, flags);
}
