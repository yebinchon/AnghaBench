
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct ppp {TYPE_2__* dev; } ;
struct channel {int dummy; } ;
struct TYPE_3__ {int rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 scalar_t__ PPP_MP ;
 scalar_t__ PPP_PROTO (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_receive_error (struct ppp*) ;
 int ppp_receive_mp_frame (struct ppp*,struct sk_buff*,struct channel*) ;
 int ppp_receive_nonmp_frame (struct ppp*,struct sk_buff*) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static void
ppp_receive_frame(struct ppp *ppp, struct sk_buff *skb, struct channel *pch)
{
 if (pskb_may_pull(skb, 2)) {






   ppp_receive_nonmp_frame(ppp, skb);
  return;
 }

 if (skb->len > 0)

  ++ppp->dev->stats.rx_length_errors;

 kfree_skb(skb);
 ppp_receive_error(ppp);
}
