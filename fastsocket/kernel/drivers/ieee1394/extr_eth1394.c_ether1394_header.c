
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int flags; int hard_header_len; int addr_len; } ;
struct eth1394hdr {int h_dest; int h_proto; } ;


 int ETH1394_HLEN ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int htons (unsigned short) ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int ether1394_header(struct sk_buff *skb, struct net_device *dev,
       unsigned short type, const void *daddr,
       const void *saddr, unsigned len)
{
 struct eth1394hdr *eth =
   (struct eth1394hdr *)skb_push(skb, ETH1394_HLEN);

 eth->h_proto = htons(type);

 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {
  memset(eth->h_dest, 0, dev->addr_len);
  return dev->hard_header_len;
 }

 if (daddr) {
  memcpy(eth->h_dest, daddr, dev->addr_len);
  return dev->hard_header_len;
 }

 return -dev->hard_header_len;
}
