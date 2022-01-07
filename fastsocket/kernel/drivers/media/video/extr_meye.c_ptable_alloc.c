
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ mchip_dmahandle; scalar_t__* mchip_ptable_toc; TYPE_1__* mchip_dev; scalar_t__** mchip_ptable; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int GFP_KERNEL ;
 int MCHIP_NB_PAGES ;
 int PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int ,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int ,scalar_t__*,scalar_t__) ;
 scalar_t__ dma_set_mask (int *,int ) ;
 int memset (scalar_t__**,int ,int) ;
 TYPE_2__ meye ;

__attribute__((used)) static int ptable_alloc(void)
{
 u32 *pt;
 int i;

 memset(meye.mchip_ptable, 0, sizeof(meye.mchip_ptable));


 if (dma_set_mask(&meye.mchip_dev->dev, DMA_BIT_MASK(32)))
  return -1;

 meye.mchip_ptable_toc = dma_alloc_coherent(&meye.mchip_dev->dev,
         PAGE_SIZE,
         &meye.mchip_dmahandle,
         GFP_KERNEL);
 if (!meye.mchip_ptable_toc) {
  meye.mchip_dmahandle = 0;
  return -1;
 }

 pt = meye.mchip_ptable_toc;
 for (i = 0; i < MCHIP_NB_PAGES; i++) {
  dma_addr_t dma;
  meye.mchip_ptable[i] = dma_alloc_coherent(&meye.mchip_dev->dev,
         PAGE_SIZE,
         &dma,
         GFP_KERNEL);
  if (!meye.mchip_ptable[i]) {
   int j;
   pt = meye.mchip_ptable_toc;
   for (j = 0; j < i; ++j) {
    dma = (dma_addr_t) *pt;
    dma_free_coherent(&meye.mchip_dev->dev,
        PAGE_SIZE,
        meye.mchip_ptable[j], dma);
    pt++;
   }
   dma_free_coherent(&meye.mchip_dev->dev,
       PAGE_SIZE,
       meye.mchip_ptable_toc,
       meye.mchip_dmahandle);
   meye.mchip_ptable_toc = ((void*)0);
   meye.mchip_dmahandle = 0;
   return -1;
  }
  *pt = (u32) dma;
  pt++;
 }
 return 0;
}
