
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct nx_host_sds_ring {int napi; } ;
struct nx_host_rds_ring {int num_desc; int skb_size; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_2__ {int rxbytes; int rx_pkts; } ;
struct netxen_adapter {int max_rds_rings; TYPE_1__ stats; scalar_t__ vlgrp; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct ethhdr {int dummy; } ;


 int ETH_ALEN ;
 int VLAN_HLEN ;
 int __vlan_get_tag (struct sk_buff*,int*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int memmove (scalar_t__,struct ethhdr*,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netxen_get_sts_pkt_offset (int ) ;
 int netxen_get_sts_refhandle (int ) ;
 int netxen_get_sts_status (int ) ;
 int netxen_get_sts_totallength (int ) ;
 struct sk_buff* netxen_process_rxbuf (struct netxen_adapter*,struct nx_host_rds_ring*,int,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_receive (int *,scalar_t__,int,struct sk_buff*) ;

__attribute__((used)) static struct netxen_rx_buffer *
netxen_process_rcv(struct netxen_adapter *adapter,
  struct nx_host_sds_ring *sds_ring,
  int ring, u64 sts_data0)
{
 struct net_device *netdev = adapter->netdev;
 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
 struct netxen_rx_buffer *buffer;
 struct sk_buff *skb;
 struct nx_host_rds_ring *rds_ring;
 struct ethhdr *eth_hdr;
 int index, length, cksum, pkt_offset;
 u16 vid = 0xffff;

 if (unlikely(ring >= adapter->max_rds_rings))
  return ((void*)0);

 rds_ring = &recv_ctx->rds_rings[ring];

 index = netxen_get_sts_refhandle(sts_data0);
 if (unlikely(index >= rds_ring->num_desc))
  return ((void*)0);

 buffer = &rds_ring->rx_buf_arr[index];

 length = netxen_get_sts_totallength(sts_data0);
 cksum = netxen_get_sts_status(sts_data0);
 pkt_offset = netxen_get_sts_pkt_offset(sts_data0);

 skb = netxen_process_rxbuf(adapter, rds_ring, index, cksum);
 if (!skb)
  return buffer;

 if (length > rds_ring->skb_size)
  skb_put(skb, rds_ring->skb_size);
 else
  skb_put(skb, length);


 if (pkt_offset)
  skb_pull(skb, pkt_offset);

 if (adapter->vlgrp) {
  if (!__vlan_get_tag(skb, &vid)) {
   eth_hdr = (struct ethhdr *) skb->data;
   memmove(skb->data + VLAN_HLEN, eth_hdr, ETH_ALEN * 2);
   skb_pull(skb, VLAN_HLEN);
  }
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
