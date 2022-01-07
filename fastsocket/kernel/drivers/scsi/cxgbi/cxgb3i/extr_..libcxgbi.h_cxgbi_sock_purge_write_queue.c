
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbi_sock {int write_queue; } ;


 int __kfree_skb (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;

__attribute__((used)) static inline void cxgbi_sock_purge_write_queue(struct cxgbi_sock *csk)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&csk->write_queue)))
  __kfree_skb(skb);
}
