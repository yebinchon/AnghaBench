
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int isdn_net_local ;
typedef int __be32 ;
typedef int __be16 ;


 int CISCO_ADDR_UNICAST ;
 int CISCO_CTRL ;
 int CISCO_SLARP_REQUEST ;
 int CISCO_TYPE_SLARP ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 struct sk_buff* isdn_net_ciscohdlck_alloc_skb (int *,int) ;
 int isdn_net_write_super (int *,struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
isdn_net_ciscohdlck_slarp_send_request(isdn_net_local *lp)
{
 struct sk_buff *skb;
 unsigned char *p;

 skb = isdn_net_ciscohdlck_alloc_skb(lp, 4 + 14);
 if (!skb)
  return;

 p = skb_put(skb, 4 + 14);


 *(u8 *)(p + 0) = CISCO_ADDR_UNICAST;
 *(u8 *)(p + 1) = CISCO_CTRL;
 *(__be16 *)(p + 2) = cpu_to_be16(CISCO_TYPE_SLARP);


 *(__be32 *)(p + 4) = cpu_to_be32(CISCO_SLARP_REQUEST);
 *(__be32 *)(p + 8) = cpu_to_be32(0);
 *(__be32 *)(p + 12) = cpu_to_be32(0);
 *(__be16 *)(p + 16) = cpu_to_be16(0);
 p += 18;

 isdn_net_write_super(lp, skb);
}
