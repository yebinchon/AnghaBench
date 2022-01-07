
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct TYPE_2__ {int tx_type; int rx_filter; } ;
struct mlx4_en_priv {TYPE_1__ hwtstamp_config; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;


 int HWTSTAMP_FILTER_NONE ;
 int NETIF_F_HW_VLAN_RX ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 int mlx4_en_alloc_resources (struct mlx4_en_priv*) ;
 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_features_change (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

int mlx4_en_timestamp_config(struct net_device *dev, int tx_type, int rx_filter)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int port_up = 0;
 int err = 0;

 mutex_lock(&mdev->state_lock);
 if (priv->port_up) {
  port_up = 1;
  mlx4_en_stop_port(dev, 1);
 }

 mlx4_en_free_resources(priv);

 en_warn(priv, "Changing Time Stamp configuration\n");

 priv->hwtstamp_config.tx_type = tx_type;
 priv->hwtstamp_config.rx_filter = rx_filter;

 if (rx_filter != HWTSTAMP_FILTER_NONE)
  dev->features &= ~NETIF_F_HW_VLAN_RX;
 else
  dev->features |= NETIF_F_HW_VLAN_RX;

 err = mlx4_en_alloc_resources(priv);
 if (err) {
  en_err(priv, "Failed reallocating port resources\n");
  goto out;
 }
 if (port_up) {
  err = mlx4_en_start_port(dev);
  if (err)
   en_err(priv, "Failed starting port\n");
 }

out:
 mutex_unlock(&mdev->state_lock);
 netdev_features_change(dev);
 return err;
}
