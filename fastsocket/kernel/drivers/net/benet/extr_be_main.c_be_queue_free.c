
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_dma_mem {int * va; int dma; int size; } ;
struct be_queue_info {struct be_dma_mem dma_mem; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void be_queue_free(struct be_adapter *adapter, struct be_queue_info *q)
{
 struct be_dma_mem *mem = &q->dma_mem;
 if (mem->va) {
  dma_free_coherent(&adapter->pdev->dev, mem->size, mem->va,
      mem->dma);
  mem->va = ((void*)0);
 }
}
