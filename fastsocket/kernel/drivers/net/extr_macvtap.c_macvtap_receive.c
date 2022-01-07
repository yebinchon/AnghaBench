
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int ETH_HLEN ;
 int macvtap_forward (int ,struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int macvtap_receive(struct sk_buff *skb)
{
 skb_push(skb, ETH_HLEN);
 return macvtap_forward(skb->dev, skb);
}
