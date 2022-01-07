
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m {int rx_lock; struct sk_buff* ack_skb; } ;


 struct sk_buff* ERR_PTR (int) ;
 int IS_ERR (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400m_msg_to_dev_cancel_wait(struct i2400m *i2400m, int code)
{
 struct sk_buff *ack_skb;
 unsigned long flags;

 spin_lock_irqsave(&i2400m->rx_lock, flags);
 ack_skb = i2400m->ack_skb;
 if (ack_skb && !IS_ERR(ack_skb))
  kfree_skb(ack_skb);
 i2400m->ack_skb = ERR_PTR(code);
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
}
