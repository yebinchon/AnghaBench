
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cp_private {int * tx_ring; int * rx_ring; int ring_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CP_RING_BYTES ;
 int cp_clean_rings (struct cp_private*) ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void cp_free_rings (struct cp_private *cp)
{
 cp_clean_rings(cp);
 dma_free_coherent(&cp->pdev->dev, CP_RING_BYTES, cp->rx_ring,
     cp->ring_dma);
 cp->rx_ring = ((void*)0);
 cp->tx_ring = ((void*)0);
}
