
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int cdio_dma_select_reg; int soft_reg_copy_lock; } ;


 int CDO_DMA_Select_Mask ;
 int CDO_DMA_Select_Shift ;
 int M_Offset_CDIO_DMA_Select ;
 TYPE_1__* devpriv ;
 int mmiowb () ;
 int ni_stc_dma_channel_select_bitfield (int) ;
 int ni_writeb (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ni_set_cdo_dma_channel(struct comedi_device *dev,
       int mite_channel)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->soft_reg_copy_lock, flags);
 devpriv->cdio_dma_select_reg &= ~CDO_DMA_Select_Mask;
 if (mite_channel >= 0) {



  devpriv->cdio_dma_select_reg |=
      (ni_stc_dma_channel_select_bitfield(mite_channel) <<
       CDO_DMA_Select_Shift) & CDO_DMA_Select_Mask;
 }
 ni_writeb(devpriv->cdio_dma_select_reg, M_Offset_CDIO_DMA_Select);
 mmiowb();
 spin_unlock_irqrestore(&devpriv->soft_reg_copy_lock, flags);
}
