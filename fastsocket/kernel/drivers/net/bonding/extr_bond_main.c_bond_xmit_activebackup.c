
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int lock; int curr_slave_lock; TYPE_1__* curr_active_slave; } ;
struct TYPE_2__ {int dev; } ;


 int BOND_IS_OK (struct bonding*) ;
 int NETDEV_TX_OK ;
 int bond_dev_queue_xmit (struct bonding*,struct sk_buff*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int bond_xmit_activebackup(struct sk_buff *skb, struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);
 int res = 1;

 read_lock(&bond->lock);
 read_lock(&bond->curr_slave_lock);

 if (!BOND_IS_OK(bond))
  goto out;

 if (!bond->curr_active_slave)
  goto out;

 res = bond_dev_queue_xmit(bond, skb, bond->curr_active_slave->dev);

out:
 if (res)

  dev_kfree_skb(skb);

 read_unlock(&bond->curr_slave_lock);
 read_unlock(&bond->lock);
 return NETDEV_TX_OK;
}
