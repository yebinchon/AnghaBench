
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2t_entry {int arpq; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static inline void arpq_enqueue(struct l2t_entry *e, struct sk_buff *skb)
{
 __skb_queue_tail(&e->arpq, skb);
}
