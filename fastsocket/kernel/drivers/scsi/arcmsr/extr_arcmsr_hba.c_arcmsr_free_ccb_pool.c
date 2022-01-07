
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AdapterControlBlock {int dma_coherent_handle; int dma_coherent; int uncache_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void arcmsr_free_ccb_pool(struct AdapterControlBlock *acb)
{
 dma_free_coherent(&acb->pdev->dev, acb->uncache_size, acb->dma_coherent, acb->dma_coherent_handle);
}
