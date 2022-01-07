
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct TYPE_2__ {int LSO_support; } ;


 int EPERM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_tso(struct net_device *dev, u32 data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (data) {
  if (!priv->mdev->LSO_support)
   return -EPERM;
  dev->features |= (NETIF_F_TSO | NETIF_F_TSO6);
 } else
  dev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
 return 0;
}
