
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int dummy; } ;


 int EBUSY ;
 int PVR2_DMA_LMMODE0 ;
 int PVR2_DMA_MODE ;
 scalar_t__ ctrl_inl (int ) ;
 int ctrl_outl (int ,int ) ;

__attribute__((used)) static int pvr2_request_dma(struct dma_channel *chan)
{
 if (ctrl_inl(PVR2_DMA_MODE) != 0)
  return -EBUSY;

 ctrl_outl(0, PVR2_DMA_LMMODE0);

 return 0;
}
