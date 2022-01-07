
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u16 ;
struct ipoib_dev_priv {int pkey; int child_type; TYPE_1__* dev; int child_intfs; int list; TYPE_1__* parent; int port; TYPE_3__* ca; int flags; int admin_mtu; int mcast_mtu; int max_ib_mtu; } ;
struct TYPE_13__ {int name; } ;
struct TYPE_12__ {int* broadcast; int ifindex; int iflink; int dev; int dev_addr; int mtu; } ;


 int ENOMEM ;
 int INFINIBAND_ALEN ;
 int IPOIB_FLAG_SUBINTERFACE ;
 int IPOIB_LEGACY_CHILD ;
 int IPOIB_UD_MTU (int ) ;
 int dev_attr_parent ;
 scalar_t__ device_create_file (int *,int *) ;
 scalar_t__ ipoib_add_pkey_attr (TYPE_1__*) ;
 scalar_t__ ipoib_add_umcast_attr (TYPE_1__*) ;
 scalar_t__ ipoib_cm_add_mode_attr (TYPE_1__*) ;
 int ipoib_create_debug_files (TYPE_1__*) ;
 int ipoib_delete_debug_files (TYPE_1__*) ;
 int ipoib_dev_cleanup (TYPE_1__*) ;
 int ipoib_dev_init (TYPE_1__*,TYPE_3__*,int ) ;
 int ipoib_set_dev_features (struct ipoib_dev_priv*,TYPE_3__*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,...) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int register_netdevice (TYPE_1__*) ;
 int set_bit (int ,int *) ;
 int unregister_netdevice (TYPE_1__*) ;

int __ipoib_vlan_add(struct ipoib_dev_priv *ppriv, struct ipoib_dev_priv *priv,
       u16 pkey, int type)
{
 int result;

 priv->max_ib_mtu = ppriv->max_ib_mtu;

 priv->dev->mtu = IPOIB_UD_MTU(priv->max_ib_mtu);
 priv->mcast_mtu = priv->admin_mtu = priv->dev->mtu;
 set_bit(IPOIB_FLAG_SUBINTERFACE, &priv->flags);

 result = ipoib_set_dev_features(priv, ppriv->ca);
 if (result)
  goto err;

 priv->pkey = pkey;

 memcpy(priv->dev->dev_addr, ppriv->dev->dev_addr, INFINIBAND_ALEN);
 priv->dev->broadcast[8] = pkey >> 8;
 priv->dev->broadcast[9] = pkey & 0xff;

 result = ipoib_dev_init(priv->dev, ppriv->ca, ppriv->port);
 if (result < 0) {
  ipoib_warn(ppriv, "failed to initialize subinterface: "
      "device %s, port %d",
      ppriv->ca->name, ppriv->port);
  goto err;
 }

 result = register_netdevice(priv->dev);
 if (result) {
  ipoib_warn(priv, "failed to initialize; error %i", result);
  goto register_failed;
 }

 priv->parent = ppriv->dev;

 ipoib_create_debug_files(priv->dev);


 if (type == IPOIB_LEGACY_CHILD) {
  if (ipoib_cm_add_mode_attr(priv->dev))
   goto sysfs_failed;
  if (ipoib_add_pkey_attr(priv->dev))
   goto sysfs_failed;
  if (ipoib_add_umcast_attr(priv->dev))
   goto sysfs_failed;

  if (device_create_file(&priv->dev->dev, &dev_attr_parent))
   goto sysfs_failed;
 }

 priv->child_type = type;
 priv->dev->iflink = ppriv->dev->ifindex;
 list_add_tail(&priv->list, &ppriv->child_intfs);

 return 0;

sysfs_failed:
 result = -ENOMEM;
 ipoib_delete_debug_files(priv->dev);
 unregister_netdevice(priv->dev);

register_failed:
 ipoib_dev_cleanup(priv->dev);

err:
 return result;
}
