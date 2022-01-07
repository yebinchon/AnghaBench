
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct net_device {int flags; int * dev_addr; } ;
struct TYPE_2__ {scalar_t__ dest; int source; } ;
struct archdr {TYPE_1__ hard; } ;


 int ARC_HDR_SIZE ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int build_header(struct sk_buff *skb, struct net_device *dev,
   unsigned short type, uint8_t daddr)
{
 int hdr_size = ARC_HDR_SIZE;
 struct archdr *pkt = (struct archdr *) skb_push(skb, hdr_size);
 pkt->hard.source = *dev->dev_addr;



 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {




  pkt->hard.dest = 0;
  return hdr_size;
 }

 pkt->hard.dest = daddr;

 return hdr_size;
}
