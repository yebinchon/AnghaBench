
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ mchip_dmahandle; int * mchip_ptable_toc; int ** mchip_ptable; TYPE_1__* mchip_dev; } ;
struct TYPE_3__ {int dev; } ;


 int MCHIP_NB_PAGES ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int memset (int **,int ,int) ;
 TYPE_2__ meye ;

__attribute__((used)) static void ptable_free(void)
{
 u32 *pt;
 int i;

 pt = meye.mchip_ptable_toc;
 for (i = 0; i < MCHIP_NB_PAGES; i++) {
  dma_addr_t dma = (dma_addr_t) *pt;
  if (meye.mchip_ptable[i])
   dma_free_coherent(&meye.mchip_dev->dev,
       PAGE_SIZE,
       meye.mchip_ptable[i], dma);
  pt++;
 }

 if (meye.mchip_ptable_toc)
  dma_free_coherent(&meye.mchip_dev->dev,
      PAGE_SIZE,
      meye.mchip_ptable_toc,
      meye.mchip_dmahandle);

 memset(meye.mchip_ptable, 0, sizeof(meye.mchip_ptable));
 meye.mchip_ptable_toc = ((void*)0);
 meye.mchip_dmahandle = 0;
}
