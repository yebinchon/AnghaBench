
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct qlcnic_rx_buffer {int dummy; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_sds_ring {int napi; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_2__ {int rxbytes; int rx_pkts; int rxdropped; } ;
struct qlcnic_adapter {size_t max_rds_rings; int flags; TYPE_1__ stats; int vlgrp; scalar_t__ mac_learn; struct qlcnic_recv_context* recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int QLCNIC_ESWITCH_ENABLED ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int qlcnic_83xx_csum_status (int ) ;
 int qlcnic_83xx_hndl (int ) ;
 int qlcnic_83xx_is_lb_pkt (int ,int ) ;
 int qlcnic_83xx_pktln (int ) ;
 int qlcnic_add_lb_filter (struct qlcnic_adapter*,struct sk_buff*,int,int) ;
 int qlcnic_check_rx_tagging (struct qlcnic_adapter*,struct sk_buff*,int*) ;
 struct sk_buff* qlcnic_process_rxbuf (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_receive (int *,int ,int,struct sk_buff*) ;

__attribute__((used)) static struct qlcnic_rx_buffer *
qlcnic_83xx_process_rcv(struct qlcnic_adapter *adapter,
   struct qlcnic_host_sds_ring *sds_ring,
   u8 ring, u64 sts_data[])
{
 struct net_device *netdev = adapter->netdev;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct qlcnic_rx_buffer *buffer;
 struct sk_buff *skb;
 struct qlcnic_host_rds_ring *rds_ring;
 int index, length, cksum, is_lb_pkt;
 u16 vid = 0xffff, t_vid;

 if (unlikely(ring >= adapter->max_rds_rings))
  return ((void*)0);

 rds_ring = &recv_ctx->rds_rings[ring];

 index = qlcnic_83xx_hndl(sts_data[0]);
 if (unlikely(index >= rds_ring->num_desc))
  return ((void*)0);

 buffer = &rds_ring->rx_buf_arr[index];
 length = qlcnic_83xx_pktln(sts_data[0]);
 cksum = qlcnic_83xx_csum_status(sts_data[1]);
 skb = qlcnic_process_rxbuf(adapter, rds_ring, index, cksum);
 if (!skb)
  return buffer;

 if (adapter->mac_learn &&
     (adapter->flags & QLCNIC_ESWITCH_ENABLED)) {
  t_vid = 0;
  is_lb_pkt = qlcnic_83xx_is_lb_pkt(sts_data[1], 0);
  qlcnic_add_lb_filter(adapter, skb, is_lb_pkt, t_vid);
 }

 if (length > rds_ring->skb_size)
  skb_put(skb, rds_ring->skb_size);
 else
  skb_put(skb, length);

 if (unlikely(qlcnic_check_rx_tagging(adapter, skb, &vid))) {
  adapter->stats.rxdropped++;
  dev_kfree_skb(skb);
  return buffer;
 }

 skb->protocol = eth_type_trans(skb, netdev);
 if (vid != 0xffff)
  vlan_gro_receive(&sds_ring->napi, adapter->vlgrp, vid, skb);
 else
  napi_gro_receive(&sds_ring->napi, skb);

 adapter->stats.rx_pkts++;
 adapter->stats.rxbytes += length;

 return buffer;
}
