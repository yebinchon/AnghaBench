
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ifla_vf_info {int dummy; } ;


 int mlx4_get_vf_config (int ,int ,int,struct ifla_vf_info*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_vf_config(struct net_device *dev, int vf, struct ifla_vf_info *ivf)
{
 struct mlx4_en_priv *en_priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = en_priv->mdev;

 return mlx4_get_vf_config(mdev->dev, en_priv->port, vf, ivf);
}
