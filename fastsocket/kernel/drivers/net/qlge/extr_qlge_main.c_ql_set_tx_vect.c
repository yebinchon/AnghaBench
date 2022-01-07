
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int tx_ring_count; int intr_count; int rss_ring_count; int rx_ring_count; TYPE_1__* rx_ring; int flags; } ;
struct TYPE_2__ {int irq; } ;


 int QL_MSIX_ENABLED ;
 scalar_t__ likely (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_set_tx_vect(struct ql_adapter *qdev)
{
 int i, j, vect;
 u32 tx_rings_per_vector = qdev->tx_ring_count / qdev->intr_count;

 if (likely(test_bit(QL_MSIX_ENABLED, &qdev->flags))) {

  for (vect = 0, j = 0, i = qdev->rss_ring_count;
      i < qdev->rx_ring_count; i++) {
   if (j == tx_rings_per_vector) {
    vect++;
    j = 0;
   }
   qdev->rx_ring[i].irq = vect;
   j++;
  }
 } else {



  for (i = 0; i < qdev->rx_ring_count; i++)
   qdev->rx_ring[i].irq = 0;
 }
}
