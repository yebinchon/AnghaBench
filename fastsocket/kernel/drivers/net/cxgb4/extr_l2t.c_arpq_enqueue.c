
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct l2t_entry {struct sk_buff* arpq_tail; struct sk_buff* arpq_head; } ;



__attribute__((used)) static inline void arpq_enqueue(struct l2t_entry *e, struct sk_buff *skb)
{
 skb->next = ((void*)0);
 if (e->arpq_head)
  e->arpq_tail->next = skb;
 else
  e->arpq_head = skb;
 e->arpq_tail = skb;
}
