
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_dma {int lock; int base; } ;


 int omap24xxcam_dmahw_init (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap24xxcam_dma_hwinit(struct omap24xxcam_dma *dma)
{
 unsigned long flags;

 spin_lock_irqsave(&dma->lock, flags);

 omap24xxcam_dmahw_init(dma->base);

 spin_unlock_irqrestore(&dma->lock, flags);
}
