
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int protocol; } ;
struct net_device {int hard_header_len; } ;


 int htons (int ) ;

__attribute__((used)) static int cycx_netdevice_hard_header(struct sk_buff *skb,
          struct net_device *dev, u16 type,
          const void *daddr, const void *saddr,
          unsigned len)
{
 skb->protocol = htons(type);

 return dev->hard_header_len;
}
