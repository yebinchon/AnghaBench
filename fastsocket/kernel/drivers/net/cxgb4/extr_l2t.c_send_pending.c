
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct l2t_entry {int * arpq_tail; struct sk_buff* arpq_head; } ;
struct adapter {int dummy; } ;


 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static void send_pending(struct adapter *adap, struct l2t_entry *e)
{
 while (e->arpq_head) {
  struct sk_buff *skb = e->arpq_head;

  e->arpq_head = skb->next;
  skb->next = ((void*)0);
  t4_ofld_send(adap, skb);
 }
 e->arpq_tail = ((void*)0);
}
