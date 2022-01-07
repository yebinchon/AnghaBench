
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dma_reg_lock; int i_flags; } ;


 int IVTV_F_I_DMA ;
 int IVTV_F_I_UDMA_PENDING ;
 int ivtv_udma_start (struct ivtv*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

void ivtv_udma_prepare(struct ivtv *itv)
{
 unsigned long flags;

 spin_lock_irqsave(&itv->dma_reg_lock, flags);
 if (!test_bit(IVTV_F_I_DMA, &itv->i_flags))
  ivtv_udma_start(itv);
 else
  set_bit(IVTV_F_I_UDMA_PENDING, &itv->i_flags);
 spin_unlock_irqrestore(&itv->dma_reg_lock, flags);
}
