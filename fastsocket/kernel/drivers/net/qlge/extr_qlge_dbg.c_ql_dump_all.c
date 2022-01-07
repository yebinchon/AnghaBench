
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wqicb {int dummy; } ;
struct ql_adapter {int tx_ring_count; int rx_ring_count; int * rx_ring; int * tx_ring; } ;
struct cqicb {int dummy; } ;


 int QL_DUMP_CQICB (struct cqicb*) ;
 int QL_DUMP_QDEV (struct ql_adapter*) ;
 int QL_DUMP_REGS (struct ql_adapter*) ;
 int QL_DUMP_RX_RING (int *) ;
 int QL_DUMP_TX_RING (int *) ;
 int QL_DUMP_WQICB (struct wqicb*) ;

void ql_dump_all(struct ql_adapter *qdev)
{
 int i;

 QL_DUMP_REGS(qdev);
 QL_DUMP_QDEV(qdev);
 for (i = 0; i < qdev->tx_ring_count; i++) {
  QL_DUMP_TX_RING(&qdev->tx_ring[i]);
  QL_DUMP_WQICB((struct wqicb *)&qdev->tx_ring[i]);
 }
 for (i = 0; i < qdev->rx_ring_count; i++) {
  QL_DUMP_RX_RING(&qdev->rx_ring[i]);
  QL_DUMP_CQICB((struct cqicb *)&qdev->rx_ring[i]);
 }
}
