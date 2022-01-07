
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int rx_ring_count; int tx_ring_count; int ndev; int * tx_ring; int * rx_ring; } ;


 int ENOMEM ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 scalar_t__ ql_alloc_rx_resources (struct ql_adapter*,int *) ;
 scalar_t__ ql_alloc_shadow_space (struct ql_adapter*) ;
 scalar_t__ ql_alloc_tx_resources (struct ql_adapter*,int *) ;
 int ql_free_mem_resources (struct ql_adapter*) ;

__attribute__((used)) static int ql_alloc_mem_resources(struct ql_adapter *qdev)
{
 int i;


 if (ql_alloc_shadow_space(qdev))
  return -ENOMEM;

 for (i = 0; i < qdev->rx_ring_count; i++) {
  if (ql_alloc_rx_resources(qdev, &qdev->rx_ring[i]) != 0) {
   netif_err(qdev, ifup, qdev->ndev,
      "RX resource allocation failed.\n");
   goto err_mem;
  }
 }

 for (i = 0; i < qdev->tx_ring_count; i++) {
  if (ql_alloc_tx_resources(qdev, &qdev->tx_ring[i]) != 0) {
   netif_err(qdev, ifup, qdev->ndev,
      "TX resource allocation failed.\n");
   goto err_mem;
  }
 }
 return 0;

err_mem:
 ql_free_mem_resources(qdev);
 return -ENOMEM;
}
