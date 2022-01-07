
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int flags; int hard_header_len; int addr_len; } ;
struct fwnet_header {int h_dest; int h_proto; } ;


 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int ) ;
 int put_unaligned_be16 (unsigned short,int *) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int fwnet_header_create(struct sk_buff *skb, struct net_device *net,
   unsigned short type, const void *daddr,
   const void *saddr, unsigned len)
{
 struct fwnet_header *h;

 h = (struct fwnet_header *)skb_push(skb, sizeof(*h));
 put_unaligned_be16(type, &h->h_proto);

 if (net->flags & (IFF_LOOPBACK | IFF_NOARP)) {
  memset(h->h_dest, 0, net->addr_len);

  return net->hard_header_len;
 }

 if (daddr) {
  memcpy(h->h_dest, daddr, net->addr_len);

  return net->hard_header_len;
 }

 return -net->hard_header_len;
}
