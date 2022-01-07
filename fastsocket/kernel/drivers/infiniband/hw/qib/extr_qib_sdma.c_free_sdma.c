
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {void* sdma_descq; int sdma_descq_cnt; scalar_t__ sdma_descq_phys; scalar_t__ sdma_head_phys; int * sdma_head_dma; struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;

__attribute__((used)) static void free_sdma(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;

 if (ppd->sdma_head_dma) {
  dma_free_coherent(&dd->pcidev->dev, PAGE_SIZE,
      (void *)ppd->sdma_head_dma,
      ppd->sdma_head_phys);
  ppd->sdma_head_dma = ((void*)0);
  ppd->sdma_head_phys = 0;
 }

 if (ppd->sdma_descq) {
  dma_free_coherent(&dd->pcidev->dev,
      ppd->sdma_descq_cnt * sizeof(u64[2]),
      ppd->sdma_descq, ppd->sdma_descq_phys);
  ppd->sdma_descq = ((void*)0);
  ppd->sdma_descq_phys = 0;
 }
}
