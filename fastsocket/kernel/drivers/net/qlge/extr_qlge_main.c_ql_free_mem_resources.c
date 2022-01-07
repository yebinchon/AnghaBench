
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int tx_ring_count; int rx_ring_count; int * rx_ring; int * tx_ring; } ;


 int ql_free_rx_resources (struct ql_adapter*,int *) ;
 int ql_free_shadow_space (struct ql_adapter*) ;
 int ql_free_tx_resources (struct ql_adapter*,int *) ;

__attribute__((used)) static void ql_free_mem_resources(struct ql_adapter *qdev)
{
 int i;

 for (i = 0; i < qdev->tx_ring_count; i++)
  ql_free_tx_resources(qdev, &qdev->tx_ring[i]);
 for (i = 0; i < qdev->rx_ring_count; i++)
  ql_free_rx_resources(qdev, &qdev->rx_ring[i]);
 ql_free_shadow_space(qdev);
}
