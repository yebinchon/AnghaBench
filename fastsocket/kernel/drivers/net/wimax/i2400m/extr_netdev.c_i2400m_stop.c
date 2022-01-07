
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct i2400m {int tx_lock; struct sk_buff* wake_tx_skb; int wake_tx_ws; } ;
struct device {int dummy; } ;


 scalar_t__ cancel_work_sync (int *) ;
 int d_fnend (int,struct device*,char*,struct net_device*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct net_device*,struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_put (struct i2400m*) ;
 int kfree_skb (struct sk_buff*) ;
 struct i2400m* net_dev_to_i2400m (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static
int i2400m_stop(struct net_device *net_dev)
{
 struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(net_dev %p [i2400m %p])\n", net_dev, i2400m);




 if (cancel_work_sync(&i2400m->wake_tx_ws) == 0
     && i2400m->wake_tx_skb != ((void*)0)) {
  unsigned long flags;
  struct sk_buff *wake_tx_skb;
  spin_lock_irqsave(&i2400m->tx_lock, flags);
  wake_tx_skb = i2400m->wake_tx_skb;
  i2400m->wake_tx_skb = ((void*)0);
  spin_unlock_irqrestore(&i2400m->tx_lock, flags);
  i2400m_put(i2400m);
  kfree_skb(wake_tx_skb);
 }
 d_fnend(3, dev, "(net_dev %p [i2400m %p]) = 0\n", net_dev, i2400m);
 return 0;
}
