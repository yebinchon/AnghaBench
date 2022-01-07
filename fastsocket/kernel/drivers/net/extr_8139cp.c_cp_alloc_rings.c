
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cp_private {int * rx_ring; int * tx_ring; int ring_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CP_RING_BYTES ;
 size_t CP_RX_RING_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cp_init_rings (struct cp_private*) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int cp_alloc_rings (struct cp_private *cp)
{
 void *mem;

 mem = dma_alloc_coherent(&cp->pdev->dev, CP_RING_BYTES,
     &cp->ring_dma, GFP_KERNEL);
 if (!mem)
  return -ENOMEM;

 cp->rx_ring = mem;
 cp->tx_ring = &cp->rx_ring[CP_RX_RING_SIZE];

 return cp_init_rings(cp);
}
