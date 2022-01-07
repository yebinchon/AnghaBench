
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strip {int true_dev_addr; } ;
struct sk_buff {int dummy; } ;
struct net_device {int hard_header_len; } ;
struct TYPE_2__ {int dst_addr; int protocol; int src_addr; } ;
typedef TYPE_1__ STRIP_Header ;
typedef int MetricomAddress ;


 int htons (unsigned short) ;
 struct strip* netdev_priv (struct net_device*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int strip_header(struct sk_buff *skb, struct net_device *dev,
   unsigned short type, const void *daddr,
   const void *saddr, unsigned len)
{
 struct strip *strip_info = netdev_priv(dev);
 STRIP_Header *header = (STRIP_Header *) skb_push(skb, sizeof(STRIP_Header));




 header->src_addr = strip_info->true_dev_addr;
 header->protocol = htons(type);



 if (!daddr)
  return (-dev->hard_header_len);

 header->dst_addr = *(MetricomAddress *) daddr;
 return (dev->hard_header_len);
}
