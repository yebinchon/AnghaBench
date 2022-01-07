
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {int port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct ethtool_rxnfc {int cmd; } ;
struct TYPE_3__ {scalar_t__ steering_mode; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int EINVAL ;


 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int en_warn (struct mlx4_en_priv*,char*,int) ;
 int mlx4_en_flow_detach (struct net_device*,struct ethtool_rxnfc*) ;
 int mlx4_en_flow_replace (struct net_device*,struct ethtool_rxnfc*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 int err = 0;
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 if (mdev->dev->caps.steering_mode !=
     MLX4_STEERING_MODE_DEVICE_MANAGED || !priv->port_up)
  return -EINVAL;

 switch (cmd->cmd) {
 case 128:
  err = mlx4_en_flow_replace(dev, cmd);
  break;
 case 129:
  err = mlx4_en_flow_detach(dev, cmd);
  break;
 default:
  en_warn(priv, "Unsupported ethtool command. (%d)\n", cmd->cmd);
  return -EINVAL;
 }

 return err;
}
