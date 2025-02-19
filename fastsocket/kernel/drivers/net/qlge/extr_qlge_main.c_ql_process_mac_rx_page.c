
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; int protocol; int truesize; int data_len; } ;
struct napi_struct {int dummy; } ;
struct rx_ring {int cq_id; int rx_bytes; int rx_packets; int rx_dropped; struct napi_struct napi; } ;
struct ql_adapter {int vlgrp; struct net_device* ndev; scalar_t__ rx_csum; } ;
struct net_device {scalar_t__ mtu; } ;
struct iphdr {int frag_off; } ;
struct ib_mac_iocb_rsp {int flags2; int flags1; int flags3; } ;
struct TYPE_3__ {scalar_t__ offset; int page; void* va; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 scalar_t__ ETH_HLEN ;
 int IB_MAC_CSUM_ERR_MASK ;
 int IB_MAC_IOCB_RSP_ERR_MASK ;
 int IB_MAC_IOCB_RSP_T ;
 int IB_MAC_IOCB_RSP_U ;
 int IB_MAC_IOCB_RSP_V4 ;
 int IP_MF ;
 int IP_OFFSET ;
 int KERN_DEBUG ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int drv ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int) ;
 int memcpy (int ,void*,scalar_t__) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int netif_err (struct ql_adapter*,int ,struct net_device*,char*) ;
 int netif_printk (struct ql_adapter*,int ,int ,struct net_device*,char*,...) ;
 int netif_receive_skb (struct sk_buff*) ;
 int prefetch (void*) ;
 int put_page (int ) ;
 int ql_categorize_rx_err (struct ql_adapter*,int,struct rx_ring*) ;
 struct bq_desc* ql_get_curr_lchunk (struct ql_adapter*,struct rx_ring*) ;
 int rx_status ;
 int skb_fill_page_desc (struct sk_buff*,int ,int ,scalar_t__,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int vlan_gro_receive (struct napi_struct*,int ,int,struct sk_buff*) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int) ;

__attribute__((used)) static void ql_process_mac_rx_page(struct ql_adapter *qdev,
     struct rx_ring *rx_ring,
     struct ib_mac_iocb_rsp *ib_mac_rsp,
     u32 length,
     u16 vlan_id)
{
 struct net_device *ndev = qdev->ndev;
 struct sk_buff *skb = ((void*)0);
 void *addr;
 struct bq_desc *lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
 struct napi_struct *napi = &rx_ring->napi;

 skb = netdev_alloc_skb(ndev, length);
 if (!skb) {
  netif_err(qdev, drv, qdev->ndev,
     "Couldn't get an skb, need to unwind!.\n");
  rx_ring->rx_dropped++;
  put_page(lbq_desc->p.pg_chunk.page);
  return;
 }

 addr = lbq_desc->p.pg_chunk.va;
 prefetch(addr);


 if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
  ql_categorize_rx_err(qdev, ib_mac_rsp->flags2, rx_ring);
  goto err_out;
 }




 if (skb->len > ndev->mtu + ETH_HLEN) {
  netif_err(qdev, drv, qdev->ndev,
     "Segment too small, dropping.\n");
  rx_ring->rx_dropped++;
  goto err_out;
 }
 memcpy(skb_put(skb, ETH_HLEN), addr, ETH_HLEN);
 netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
       "%d bytes of headers and data in large. Chain page to new skb and pull tail.\n",
       length);
 skb_fill_page_desc(skb, 0, lbq_desc->p.pg_chunk.page,
    lbq_desc->p.pg_chunk.offset+ETH_HLEN,
    length-ETH_HLEN);
 skb->len += length-ETH_HLEN;
 skb->data_len += length-ETH_HLEN;
 skb->truesize += length-ETH_HLEN;

 rx_ring->rx_packets++;
 rx_ring->rx_bytes += skb->len;
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

   struct iphdr *iph =
    (struct iphdr *) ((u8 *)addr + ETH_HLEN);
   if (!(iph->frag_off & htons(IP_MF|IP_OFFSET))) {
    skb->ip_summed = CHECKSUM_UNNECESSARY;
    netif_printk(qdev, rx_status, KERN_DEBUG,
          qdev->ndev,
          "UDP checksum done!\n");
   }
  }
 }

 skb_record_rx_queue(skb, rx_ring->cq_id);
 if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
  if (vlan_id != 0xffff)
   vlan_gro_receive(napi, qdev->vlgrp, vlan_id, skb);
  else
   napi_gro_receive(napi, skb);
 } else {
  if (vlan_id != 0xffff)
   vlan_hwaccel_receive_skb(skb, qdev->vlgrp, vlan_id);
  else
   netif_receive_skb(skb);
 }
 return;
err_out:
 dev_kfree_skb_any(skb);
 put_page(lbq_desc->p.pg_chunk.page);
}
