
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef unsigned short uint16_t ;
struct sk_buff {int network_header; int mac_header; struct net_device* dev; } ;
struct TYPE_2__ {int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct arcnet_local {size_t* default_proto; } ;
struct ArcProto {int (* build_header ) (struct sk_buff*,struct net_device*,unsigned short,size_t) ;} ;


 int BUGMSG (int ,char*,unsigned short,...) ;
 int D_DURING ;
 int D_NORMAL ;
 unsigned short ETH_P_IP ;
 struct ArcProto** arc_proto_map ;
 scalar_t__ arp_find (size_t*,struct sk_buff*) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 scalar_t__ skb_pull (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,struct net_device*,unsigned short,size_t) ;

__attribute__((used)) static int arcnet_rebuild_header(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct arcnet_local *lp = netdev_priv(dev);
 int status = 0;
 unsigned short type;
 uint8_t daddr=0;
 struct ArcProto *proto;



 if (skb->network_header - skb->mac_header != 2) {
  BUGMSG(D_NORMAL,
         "rebuild_header: shouldn't be here! (hdrsize=%d)\n",
         (int)(skb->network_header - skb->mac_header));
  return 0;
 }
 type = *(uint16_t *) skb_pull(skb, 2);
 BUGMSG(D_DURING, "rebuild header for protocol %Xh\n", type);

 if (type == ETH_P_IP) {






 } else {
  BUGMSG(D_NORMAL,
         "I don't understand ethernet protocol %Xh addresses!\n", type);
  dev->stats.tx_errors++;
  dev->stats.tx_aborted_errors++;
 }


 if (!status)
  return 0;


 proto = arc_proto_map[lp->default_proto[daddr]];
 proto->build_header(skb, dev, type, daddr);

 return 1;
}
