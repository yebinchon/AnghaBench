
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct net_device {int dummy; } ;
struct ipoib_header {scalar_t__ reserved; int proto; } ;
struct ipoib_cb {int hwaddr; } ;


 int INFINIBAND_ALEN ;
 int htons (unsigned short) ;
 int memcpy (int ,void const*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int ipoib_hard_header(struct sk_buff *skb,
        struct net_device *dev,
        unsigned short type,
        const void *daddr, const void *saddr, unsigned len)
{
 struct ipoib_header *header;
 struct ipoib_cb *cb = (struct ipoib_cb *) skb->cb;

 header = (struct ipoib_header *) skb_push(skb, sizeof *header);

 header->proto = htons(type);
 header->reserved = 0;






 memcpy(cb->hwaddr, daddr, INFINIBAND_ALEN);

 return sizeof *header;
}
