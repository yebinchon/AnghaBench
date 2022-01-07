
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ppp {int closing; } ;
struct channel {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int ppp_receive_frame (struct ppp*,struct sk_buff*,struct channel*) ;
 int ppp_recv_lock (struct ppp*) ;
 int ppp_recv_unlock (struct ppp*) ;

__attribute__((used)) static inline void
ppp_do_recv(struct ppp *ppp, struct sk_buff *skb, struct channel *pch)
{
 ppp_recv_lock(ppp);
 if (!ppp->closing)
  ppp_receive_frame(ppp, skb, pch);
 else
  kfree_skb(skb);
 ppp_recv_unlock(ppp);
}
