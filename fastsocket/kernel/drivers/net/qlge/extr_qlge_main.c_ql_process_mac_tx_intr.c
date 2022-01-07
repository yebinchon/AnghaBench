
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring_desc {TYPE_1__* skb; int map_cnt; } ;
struct tx_ring {int tx_count; int tx_packets; int tx_bytes; struct tx_ring_desc* q; } ;
struct ql_adapter {int ndev; struct tx_ring* tx_ring; } ;
struct ob_mac_iocb_rsp {size_t txq_idx; size_t tid; int flags1; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int OB_MAC_IOCB_RSP_B ;
 int OB_MAC_IOCB_RSP_E ;
 int OB_MAC_IOCB_RSP_L ;
 int OB_MAC_IOCB_RSP_P ;
 int OB_MAC_IOCB_RSP_S ;
 int QL_DUMP_OB_MAC_RSP (struct ob_mac_iocb_rsp*) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb (TYPE_1__*) ;
 int netif_warn (struct ql_adapter*,int ,int ,char*) ;
 int ql_unmap_send (struct ql_adapter*,struct tx_ring_desc*,int ) ;
 int tx_done ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ql_process_mac_tx_intr(struct ql_adapter *qdev,
       struct ob_mac_iocb_rsp *mac_rsp)
{
 struct tx_ring *tx_ring;
 struct tx_ring_desc *tx_ring_desc;

 QL_DUMP_OB_MAC_RSP(mac_rsp);
 tx_ring = &qdev->tx_ring[mac_rsp->txq_idx];
 tx_ring_desc = &tx_ring->q[mac_rsp->tid];
 ql_unmap_send(qdev, tx_ring_desc, tx_ring_desc->map_cnt);
 tx_ring->tx_bytes += (tx_ring_desc->skb)->len;
 tx_ring->tx_packets++;
 dev_kfree_skb(tx_ring_desc->skb);
 tx_ring_desc->skb = ((void*)0);

 if (unlikely(mac_rsp->flags1 & (OB_MAC_IOCB_RSP_E |
     OB_MAC_IOCB_RSP_S |
     OB_MAC_IOCB_RSP_L |
     OB_MAC_IOCB_RSP_P | OB_MAC_IOCB_RSP_B))) {
  if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_E) {
   netif_warn(qdev, tx_done, qdev->ndev,
       "Total descriptor length did not match transfer length.\n");
  }
  if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_S) {
   netif_warn(qdev, tx_done, qdev->ndev,
       "Frame too short to be valid, not sent.\n");
  }
  if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_L) {
   netif_warn(qdev, tx_done, qdev->ndev,
       "Frame too long, but sent anyway.\n");
  }
  if (mac_rsp->flags1 & OB_MAC_IOCB_RSP_B) {
   netif_warn(qdev, tx_done, qdev->ndev,
       "PCI backplane error. Frame not sent.\n");
  }
 }
 atomic_inc(&tx_ring->tx_count);
}
