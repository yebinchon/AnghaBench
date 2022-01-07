
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ busaddr; int * virtaddr; int pdev; int * tx_ring; int * rx_ring; } ;
typedef TYPE_1__ vlsi_irda_dev_t ;


 int HW_RING_AREA_SIZE ;
 int pci_free_consistent (int ,int ,int *,scalar_t__) ;
 int vlsi_free_ring (int *) ;

__attribute__((used)) static int vlsi_destroy_hwif(vlsi_irda_dev_t *idev)
{
 vlsi_free_ring(idev->rx_ring);
 vlsi_free_ring(idev->tx_ring);
 idev->rx_ring = idev->tx_ring = ((void*)0);

 if (idev->busaddr)
  pci_free_consistent(idev->pdev,HW_RING_AREA_SIZE,idev->virtaddr,idev->busaddr);

 idev->virtaddr = ((void*)0);
 idev->busaddr = 0;

 return 0;
}
