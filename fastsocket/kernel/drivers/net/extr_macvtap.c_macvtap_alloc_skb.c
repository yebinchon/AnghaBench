
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {size_t data_len; size_t len; } ;


 size_t PAGE_SIZE ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 struct sk_buff* sock_alloc_send_pskb (struct sock*,size_t,size_t,int,int*) ;

__attribute__((used)) static inline struct sk_buff *macvtap_alloc_skb(struct sock *sk, size_t prepad,
      size_t len, size_t linear,
      int noblock, int *err)
{
 struct sk_buff *skb;


 if (prepad + len < PAGE_SIZE || !linear)
  linear = len;

 skb = sock_alloc_send_pskb(sk, prepad + linear, len - linear, noblock,
       err);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, prepad);
 skb_put(skb, linear);
 skb->data_len = len - linear;
 skb->len += len - linear;

 return skb;
}
