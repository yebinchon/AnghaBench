
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2t_entry {int state; int lock; int arpq; int neigh; } ;
struct cpl_l2t_write_req {int dummy; } ;


 int GFP_ATOMIC ;



 int __kfree_skb (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int arpq_enqueue (struct l2t_entry*,struct sk_buff*) ;
 int cxgb3_ofld_send (struct t3cdev*,struct sk_buff*) ;
 int neigh_event_send (int ,int *) ;
 int setup_l2e_send_pending (struct t3cdev*,struct sk_buff*,struct l2t_entry*) ;
 int skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int t3_l2t_send_slow(struct t3cdev *dev, struct sk_buff *skb,
       struct l2t_entry *e)
{
again:
 switch (e->state) {
 case 129:
  neigh_event_send(e->neigh, ((void*)0));
  spin_lock_bh(&e->lock);
  if (e->state == 129)
   e->state = 128;
  spin_unlock_bh(&e->lock);
 case 128:
  return cxgb3_ofld_send(dev, skb);
 case 130:
  spin_lock_bh(&e->lock);
  if (e->state != 130) {

   spin_unlock_bh(&e->lock);
   goto again;
  }
  arpq_enqueue(e, skb);
  spin_unlock_bh(&e->lock);
  if (!neigh_event_send(e->neigh, ((void*)0))) {
   skb = alloc_skb(sizeof(struct cpl_l2t_write_req),
     GFP_ATOMIC);
   if (!skb)
    break;

   spin_lock_bh(&e->lock);
   if (!skb_queue_empty(&e->arpq))
    setup_l2e_send_pending(dev, skb, e);
   else
    __kfree_skb(skb);
   spin_unlock_bh(&e->lock);
  }
 }
 return 0;
}
