
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct net_device {int flags; TYPE_3__ dev; struct iw_handler_def* wireless_handlers; int dev_addr; int * ethtool_ops; int * netdev_ops; struct lbs_private* ml_priv; } ;
struct lbs_private {TYPE_2__* dev; struct net_device* mesh_dev; } ;
struct iw_handler_def {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; int dev_addr; } ;


 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int LBS_DEB_MESH ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev (int ,char*,int ) ;
 int ether_setup ;
 int free_netdev (struct net_device*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_mesh (char*) ;
 int lbs_ethtool_ops ;
 int lbs_mesh_attr_group ;
 int lbs_persist_config_init (struct net_device*) ;
 int lbs_pr_err (char*) ;
 int memcpy (int ,int ,int) ;
 int mesh_handler_def ;
 int mesh_netdev_ops ;
 int register_netdev (struct net_device*) ;
 int sysfs_create_group (int *,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int lbs_add_mesh(struct lbs_private *priv)
{
 struct net_device *mesh_dev = ((void*)0);
 int ret = 0;

 lbs_deb_enter(LBS_DEB_MESH);


 if (!(mesh_dev = alloc_netdev(0, "msh%d", ether_setup))) {
  lbs_deb_mesh("init mshX device failed\n");
  ret = -ENOMEM;
  goto done;
 }
 mesh_dev->ml_priv = priv;
 priv->mesh_dev = mesh_dev;

 mesh_dev->netdev_ops = &mesh_netdev_ops;
 mesh_dev->ethtool_ops = &lbs_ethtool_ops;
 memcpy(mesh_dev->dev_addr, priv->dev->dev_addr,
   sizeof(priv->dev->dev_addr));

 SET_NETDEV_DEV(priv->mesh_dev, priv->dev->dev.parent);




 mesh_dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

 ret = register_netdev(mesh_dev);
 if (ret) {
  lbs_pr_err("cannot register mshX virtual interface\n");
  goto err_free;
 }

 ret = sysfs_create_group(&(mesh_dev->dev.kobj), &lbs_mesh_attr_group);
 if (ret)
  goto err_unregister;

 lbs_persist_config_init(mesh_dev);


 ret = 0;
 goto done;

err_unregister:
 unregister_netdev(mesh_dev);

err_free:
 free_netdev(mesh_dev);

done:
 lbs_deb_leave_args(LBS_DEB_MESH, "ret %d", ret);
 return ret;
}
