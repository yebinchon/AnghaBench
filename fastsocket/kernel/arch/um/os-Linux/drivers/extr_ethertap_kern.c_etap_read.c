
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uml_net_private {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_HEADER_ETHERTAP ;
 int net_recvfrom (int,int ,scalar_t__) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int etap_read(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 int len;

 len = net_recvfrom(fd, skb_mac_header(skb),
      skb->dev->mtu + 2 + ETH_HEADER_ETHERTAP);
 if (len <= 0)
  return(len);

 skb_pull(skb, 2);
 len -= 2;
 return len;
}
