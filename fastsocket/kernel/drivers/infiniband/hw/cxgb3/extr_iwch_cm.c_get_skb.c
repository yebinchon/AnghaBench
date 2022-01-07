
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 struct sk_buff* alloc_skb (int,int ) ;
 int skb_cloned (struct sk_buff*) ;
 int skb_get (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *get_skb(struct sk_buff *skb, int len, gfp_t gfp)
{
 if (skb && !skb_is_nonlinear(skb) && !skb_cloned(skb)) {
  skb_trim(skb, 0);
  skb_get(skb);
 } else {
  skb = alloc_skb(len, gfp);
 }
 return skb;
}
