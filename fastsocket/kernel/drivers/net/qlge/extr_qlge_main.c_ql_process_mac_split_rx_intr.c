
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ data; int protocol; struct net_device* dev; } ;
struct rx_ring {int napi; int cq_id; int rx_bytes; int rx_packets; int rx_multicast; int rx_dropped; } ;
struct ql_adapter {scalar_t__ vlgrp; struct net_device* ndev; scalar_t__ rx_csum; int flags; } ;
struct net_device {scalar_t__ mtu; } ;
struct iphdr {int frag_off; } ;
struct ib_mac_iocb_rsp {int flags2; int flags1; int flags3; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 scalar_t__ ETH_HLEN ;
 int IB_MAC_CSUM_ERR_MASK ;
 int IB_MAC_IOCB_RSP_ERR_MASK ;
 int IB_MAC_IOCB_RSP_M_HASH ;
 int IB_MAC_IOCB_RSP_M_MASK ;
 int IB_MAC_IOCB_RSP_M_PROM ;
 int IB_MAC_IOCB_RSP_M_REG ;
 int IB_MAC_IOCB_RSP_P ;
 int IB_MAC_IOCB_RSP_T ;
 int IB_MAC_IOCB_RSP_U ;
 int IB_MAC_IOCB_RSP_V ;
 int IB_MAC_IOCB_RSP_V4 ;
 int IP_MF ;
 int IP_OFFSET ;
 int KERN_DEBUG ;
 int QL_DUMP_IB_MAC_RSP (struct ib_mac_iocb_rsp*) ;
 int QL_SELFTEST ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_printk (struct ql_adapter*,int ,int ,struct net_device*,char*,...) ;
 int netif_receive_skb (struct sk_buff*) ;
 int prefetch (scalar_t__) ;
 struct sk_buff* ql_build_rx_skb (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*) ;
 int ql_categorize_rx_err (struct ql_adapter*,int,struct rx_ring*) ;
 int ql_check_lb_frame (struct ql_adapter*,struct sk_buff*) ;
 int rx_status ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_receive (int *,scalar_t__,scalar_t__,struct sk_buff*) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
       struct rx_ring *rx_ring,
       struct ib_mac_iocb_rsp *ib_mac_rsp,
       u16 vlan_id)
{
 struct net_device *ndev = qdev->ndev;
 struct sk_buff *skb = ((void*)0);

 QL_DUMP_IB_MAC_RSP(ib_mac_rsp);

 skb = ql_build_rx_skb(qdev, rx_ring, ib_mac_rsp);
 if (unlikely(!skb)) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "No skb available, drop packet.\n");
  rx_ring->rx_dropped++;
  return;
 }


 if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
  ql_categorize_rx_err(qdev, ib_mac_rsp->flags2, rx_ring);
  dev_kfree_skb_any(skb);
  return;
 }




 if (skb->len > ndev->mtu + ETH_HLEN) {
  dev_kfree_skb_any(skb);
  rx_ring->rx_dropped++;
  return;
 }


 if (test_bit(QL_SELFTEST, &qdev->flags)) {
  ql_check_lb_frame(qdev, skb);
  dev_kfree_skb_any(skb);
  return;
 }

 prefetch(skb->data);
 skb->dev = ndev;
 if (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev, "%s Multicast.\n",
        (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
        IB_MAC_IOCB_RSP_M_HASH ? "Hash" :
        (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
        IB_MAC_IOCB_RSP_M_REG ? "Registered" :
        (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
        IB_MAC_IOCB_RSP_M_PROM ? "Promiscuous" : "");
  rx_ring->rx_multicast++;
 }
 if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_P) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "Promiscuous Packet.\n");
 }

 skb->protocol = eth_type_trans(skb, ndev);
 skb->ip_summed = CHECKSUM_NONE;




 if (qdev->rx_csum &&
  !(ib_mac_rsp->flags1 & IB_MAC_CSUM_ERR_MASK)) {

  if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_T) {
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "TCP checksum done!\n");
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  } else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
    (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {

   struct iphdr *iph = (struct iphdr *) skb->data;
   if (!(iph->frag_off & htons(IP_MF|IP_OFFSET))) {
    skb->ip_summed = CHECKSUM_UNNECESSARY;
    netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
          "TCP checksum done!\n");
   }
  }
 }

 rx_ring->rx_packets++;
 rx_ring->rx_bytes += skb->len;
 skb_record_rx_queue(skb, rx_ring->cq_id);
 if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
  if (qdev->vlgrp &&
   (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) &&
   (vlan_id != 0))
   vlan_gro_receive(&rx_ring->napi, qdev->vlgrp,
    vlan_id, skb);
  else
   napi_gro_receive(&rx_ring->napi, skb);
 } else {
  if (qdev->vlgrp &&
   (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) &&
   (vlan_id != 0))
   vlan_hwaccel_receive_skb(skb, qdev->vlgrp, vlan_id);
  else
   netif_receive_skb(skb);
 }
}
