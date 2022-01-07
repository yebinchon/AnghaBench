
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_dma {int num_pages; int ** pg_arr; int * pgtbl; int pgtbl_map; int pgtbl_size; int * pg_map_arr; } ;
struct cnic_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int BNX2_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int **) ;

__attribute__((used)) static void cnic_free_dma(struct cnic_dev *dev, struct cnic_dma *dma)
{
 int i;

 if (!dma->pg_arr)
  return;

 for (i = 0; i < dma->num_pages; i++) {
  if (dma->pg_arr[i]) {
   dma_free_coherent(&dev->pcidev->dev, BNX2_PAGE_SIZE,
       dma->pg_arr[i], dma->pg_map_arr[i]);
   dma->pg_arr[i] = ((void*)0);
  }
 }
 if (dma->pgtbl) {
  dma_free_coherent(&dev->pcidev->dev, dma->pgtbl_size,
      dma->pgtbl, dma->pgtbl_map);
  dma->pgtbl = ((void*)0);
 }
 kfree(dma->pg_arr);
 dma->pg_arr = ((void*)0);
 dma->num_pages = 0;
}
