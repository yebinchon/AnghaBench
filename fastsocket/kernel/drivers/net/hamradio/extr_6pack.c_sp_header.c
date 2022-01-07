
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned short ETH_P_AX25 ;
 int ax25_hard_header (struct sk_buff*,struct net_device*,unsigned short,void const*,void const*,unsigned int) ;

__attribute__((used)) static int sp_header(struct sk_buff *skb, struct net_device *dev,
       unsigned short type, const void *daddr,
       const void *saddr, unsigned len)
{




 return 0;
}
