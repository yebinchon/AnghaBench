
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvtap_queue {struct file* file; int sk; int tap; int vlan; } ;
struct macvlan_dev {struct file* file; int sk; int tap; int vlan; } ;
struct file {struct macvtap_queue* private_data; } ;


 int EBUSY ;
 struct macvtap_queue* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,struct macvtap_queue*) ;
 scalar_t__ rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_hold (int *) ;

__attribute__((used)) static int macvtap_set_queue(struct net_device *dev, struct file *file,
    struct macvtap_queue *q)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 int err = -EBUSY;

 rtnl_lock();
 if (rtnl_dereference(vlan->tap))
  goto out;

 err = 0;
 rcu_assign_pointer(q->vlan, vlan);
 rcu_assign_pointer(vlan->tap, q);
 sock_hold(&q->sk);

 q->file = file;
 file->private_data = q;

out:
 rtnl_unlock();
 return err;
}
