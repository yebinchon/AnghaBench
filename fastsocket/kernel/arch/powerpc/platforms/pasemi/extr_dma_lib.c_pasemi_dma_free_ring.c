
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pasemi_dmachan {int ring_size; scalar_t__ ring_dma; int * ring_virt; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 TYPE_1__* dma_pdev ;

void pasemi_dma_free_ring(struct pasemi_dmachan *chan)
{
 BUG_ON(!chan->ring_virt);

 dma_free_coherent(&dma_pdev->dev, chan->ring_size * sizeof(u64),
     chan->ring_virt, chan->ring_dma);
 chan->ring_virt = ((void*)0);
 chan->ring_size = 0;
 chan->ring_dma = 0;
}
