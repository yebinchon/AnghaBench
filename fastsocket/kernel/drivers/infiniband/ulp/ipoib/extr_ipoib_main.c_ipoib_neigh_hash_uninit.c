
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int deleted; } ;
struct ipoib_dev_priv {TYPE_1__ ntbl; int neigh_reap_task; int flags; } ;


 int IPOIB_NEIGH_TBL_FLUSH ;
 int IPOIB_STOP_NEIGH_GC ;
 int cancel_delayed_work (int *) ;
 int init_completion (int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_flush_neighs (struct ipoib_dev_priv*) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ipoib_neigh_hash_uninit(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 int stopped;

 ipoib_dbg(priv, "ipoib_neigh_hash_uninit\n");
 init_completion(&priv->ntbl.deleted);
 set_bit(IPOIB_NEIGH_TBL_FLUSH, &priv->flags);


 stopped = test_and_set_bit(IPOIB_STOP_NEIGH_GC, &priv->flags);
 if (!stopped)
  cancel_delayed_work(&priv->neigh_reap_task);

 ipoib_flush_neighs(priv);

 wait_for_completion(&priv->ntbl.deleted);
}
