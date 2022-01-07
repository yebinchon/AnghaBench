
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int perm_hwaddr; int dev; } ;
struct sk_buff {int priority; void* protocol; scalar_t__ mac_header; scalar_t__ network_header; int dev; } ;
struct port {int lacpdu; struct slave* slave; } ;
struct TYPE_2__ {void* h_proto; int h_source; int h_dest; } ;
struct lacpdu_header {int lacpdu; TYPE_1__ hdr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 void* PKT_TYPE_LACPDU ;
 int TC_PRIO_CONTROL ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int lacpdu_mcast_addr ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int ad_lacpdu_send(struct port *port)
{
 struct slave *slave = port->slave;
 struct sk_buff *skb;
 struct lacpdu_header *lacpdu_header;
 int length = sizeof(struct lacpdu_header);

 skb = dev_alloc_skb(length);
 if (!skb) {
  return -ENOMEM;
 }

 skb->dev = slave->dev;
 skb_reset_mac_header(skb);
 skb->network_header = skb->mac_header + ETH_HLEN;
 skb->protocol = PKT_TYPE_LACPDU;
 skb->priority = TC_PRIO_CONTROL;

 lacpdu_header = (struct lacpdu_header *)skb_put(skb, length);

 memcpy(lacpdu_header->hdr.h_dest, lacpdu_mcast_addr, ETH_ALEN);


 memcpy(lacpdu_header->hdr.h_source, slave->perm_hwaddr, ETH_ALEN);
 lacpdu_header->hdr.h_proto = PKT_TYPE_LACPDU;

 lacpdu_header->lacpdu = port->lacpdu;

 dev_queue_xmit(skb);

 return 0;
}
