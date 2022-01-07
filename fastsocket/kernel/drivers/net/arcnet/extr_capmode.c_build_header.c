
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct net_device {int flags; int * dev_addr; } ;
struct TYPE_6__ {scalar_t__ dest; int source; } ;
struct TYPE_4__ {int * cookie; } ;
struct TYPE_5__ {TYPE_1__ cap; } ;
struct archdr {TYPE_3__ hard; TYPE_2__ soft; } ;


 int ARC_HDR_SIZE ;
 int BUGMSG (int ,char*,int) ;
 int D_PROTO ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int build_header(struct sk_buff *skb,
   struct net_device *dev,
   unsigned short type,
   uint8_t daddr)
{
 int hdr_size = ARC_HDR_SIZE;
 struct archdr *pkt = (struct archdr *) skb_push(skb, hdr_size);

 BUGMSG(D_PROTO, "Preparing header for cap packet %x.\n",
        *((int*)&pkt->soft.cap.cookie[0]));







 pkt->hard.source = *dev->dev_addr;



 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {




  pkt->hard.dest = 0;
  return hdr_size;
 }

 pkt->hard.dest = daddr;

 return hdr_size;
}
