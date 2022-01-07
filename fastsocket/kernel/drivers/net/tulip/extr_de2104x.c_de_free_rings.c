
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de_private {int * tx_ring; int * rx_ring; int ring_dma; int pdev; } ;


 int DE_RING_BYTES ;
 int de_clean_rings (struct de_private*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void de_free_rings (struct de_private *de)
{
 de_clean_rings(de);
 pci_free_consistent(de->pdev, DE_RING_BYTES, de->rx_ring, de->ring_dma);
 de->rx_ring = ((void*)0);
 de->tx_ring = ((void*)0);
}
