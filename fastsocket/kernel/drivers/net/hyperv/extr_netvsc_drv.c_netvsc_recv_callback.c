
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int vlan_tci; int ip_summed; int protocol; } ;
struct netvsc_device {struct net_device* ndev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct hv_netvsc_packet {int total_data_buflen; int vlan_tci; int data; void* status; } ;
struct hv_device {int dummy; } ;


 int CHECKSUM_NONE ;
 void* NVSP_STAT_FAIL ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ hv_get_drvdata (struct hv_device*) ;
 int memcpy (int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int netvsc_recv_callback(struct hv_device *device_obj,
    struct hv_netvsc_packet *packet)
{
 struct net_device *net;
 struct sk_buff *skb;

 net = ((struct netvsc_device *)hv_get_drvdata(device_obj))->ndev;
 if (!net) {
  netdev_err(net, "got receive callback but net device"
   " not initialized yet\n");
  packet->status = NVSP_STAT_FAIL;
  return 0;
 }


 skb = netdev_alloc_skb_ip_align(net, packet->total_data_buflen);
 if (unlikely(!skb)) {
  ++net->stats.rx_dropped;
  packet->status = NVSP_STAT_FAIL;
  return 0;
 }





 memcpy(skb_put(skb, packet->total_data_buflen), packet->data,
  packet->total_data_buflen);

 skb->protocol = eth_type_trans(skb, net);
 skb->ip_summed = CHECKSUM_NONE;
 skb->vlan_tci = packet->vlan_tci;

 net->stats.rx_packets++;
 net->stats.rx_bytes += packet->total_data_buflen;






 netif_rx(skb);

 return 0;
}
