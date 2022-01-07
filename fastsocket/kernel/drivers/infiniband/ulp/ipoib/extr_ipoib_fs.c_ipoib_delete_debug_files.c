
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {scalar_t__ path_dentry; scalar_t__ mcg_dentry; } ;


 int debugfs_remove (scalar_t__) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

void ipoib_delete_debug_files(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 if (priv->mcg_dentry)
  debugfs_remove(priv->mcg_dentry);
 if (priv->path_dentry)
  debugfs_remove(priv->path_dentry);
}
