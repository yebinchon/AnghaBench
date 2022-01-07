
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbi_sock {int dummy; } ;


 struct sk_buff* cxgbi_sock_dequeue_wr (struct cxgbi_sock*) ;
 int kfree_skb (struct sk_buff*) ;

void cxgbi_sock_purge_wr_queue(struct cxgbi_sock *csk)
{
 struct sk_buff *skb;

 while ((skb = cxgbi_sock_dequeue_wr(csk)) != ((void*)0))
  kfree_skb(skb);
}
