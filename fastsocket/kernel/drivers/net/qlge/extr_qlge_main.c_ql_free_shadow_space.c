
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int * tx_ring_shadow_reg_area; int tx_ring_shadow_reg_dma; int pdev; int * rx_ring_shadow_reg_area; int rx_ring_shadow_reg_dma; } ;


 int PAGE_SIZE ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void ql_free_shadow_space(struct ql_adapter *qdev)
{
 if (qdev->rx_ring_shadow_reg_area) {
  pci_free_consistent(qdev->pdev,
        PAGE_SIZE,
        qdev->rx_ring_shadow_reg_area,
        qdev->rx_ring_shadow_reg_dma);
  qdev->rx_ring_shadow_reg_area = ((void*)0);
 }
 if (qdev->tx_ring_shadow_reg_area) {
  pci_free_consistent(qdev->pdev,
        PAGE_SIZE,
        qdev->tx_ring_shadow_reg_area,
        qdev->tx_ring_shadow_reg_dma);
  qdev->tx_ring_shadow_reg_area = ((void*)0);
 }
}
