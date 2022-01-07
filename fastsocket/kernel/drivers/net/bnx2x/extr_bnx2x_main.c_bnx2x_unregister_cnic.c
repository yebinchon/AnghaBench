
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cnic_eth_dev {scalar_t__ drv_state; } ;
struct bnx2x {int cnic_enabled; int * cnic_kwq; int cnic_mutex; int cnic_ops; struct cnic_eth_dev cnic_eth_dev; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int bnx2x_unregister_cnic(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

 mutex_lock(&bp->cnic_mutex);
 cp->drv_state = 0;
 RCU_INIT_POINTER(bp->cnic_ops, ((void*)0));
 mutex_unlock(&bp->cnic_mutex);
 synchronize_rcu();
 bp->cnic_enabled = 0;
 kfree(bp->cnic_kwq);
 bp->cnic_kwq = ((void*)0);

 return 0;
}
