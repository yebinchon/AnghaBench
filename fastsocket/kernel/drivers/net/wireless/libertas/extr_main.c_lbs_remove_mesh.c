
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;
struct lbs_private {struct net_device* mesh_dev; } ;


 int LBS_DEB_MESH ;
 int free_netdev (struct net_device*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_mesh_attr_group ;
 int lbs_persist_config_remove (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void lbs_remove_mesh(struct lbs_private *priv)
{
 struct net_device *mesh_dev;


 mesh_dev = priv->mesh_dev;
 if (!mesh_dev)
  return;

 lbs_deb_enter(LBS_DEB_MESH);
 netif_stop_queue(mesh_dev);
 netif_carrier_off(mesh_dev);
 sysfs_remove_group(&(mesh_dev->dev.kobj), &lbs_mesh_attr_group);
 lbs_persist_config_remove(mesh_dev);
 unregister_netdev(mesh_dev);
 priv->mesh_dev = ((void*)0);
 free_netdev(mesh_dev);
 lbs_deb_leave(LBS_DEB_MESH);
}
