
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; struct sk_buff* next; } ;
struct sk_buff {struct sk_buff* next; } ;
struct fcoe_rcv_info {struct fc_lport* fr_dev; } ;
struct fcoe_percpu_s {struct sk_buff_head fcoe_rx_list; } ;
struct fc_lport {int dummy; } ;


 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 struct fcoe_percpu_s bnx2fc_global ;
 struct fcoe_rcv_info* fcoe_dev_from_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void bnx2fc_clean_rx_queue(struct fc_lport *lp)
{
 struct fcoe_percpu_s *bg;
 struct fcoe_rcv_info *fr;
 struct sk_buff_head *list;
 struct sk_buff *skb, *next;
 struct sk_buff *head;

 bg = &bnx2fc_global;
 spin_lock_bh(&bg->fcoe_rx_list.lock);
 list = &bg->fcoe_rx_list;
 head = list->next;
 for (skb = head; skb != (struct sk_buff *)list;
      skb = next) {
  next = skb->next;
  fr = fcoe_dev_from_skb(skb);
  if (fr->fr_dev == lp) {
   __skb_unlink(skb, list);
   kfree_skb(skb);
  }
 }
 spin_unlock_bh(&bg->fcoe_rx_list.lock);
}
