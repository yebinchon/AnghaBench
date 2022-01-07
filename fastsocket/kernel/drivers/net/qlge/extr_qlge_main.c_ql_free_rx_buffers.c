
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {scalar_t__ sbq; scalar_t__ lbq; } ;
struct ql_adapter {int rx_ring_count; struct rx_ring* rx_ring; } ;


 int ql_free_lbq_buffers (struct ql_adapter*,struct rx_ring*) ;
 int ql_free_sbq_buffers (struct ql_adapter*,struct rx_ring*) ;

__attribute__((used)) static void ql_free_rx_buffers(struct ql_adapter *qdev)
{
 int i;
 struct rx_ring *rx_ring;

 for (i = 0; i < qdev->rx_ring_count; i++) {
  rx_ring = &qdev->rx_ring[i];
  if (rx_ring->lbq)
   ql_free_lbq_buffers(qdev, rx_ring);
  if (rx_ring->sbq)
   ql_free_sbq_buffers(qdev, rx_ring);
 }
}
