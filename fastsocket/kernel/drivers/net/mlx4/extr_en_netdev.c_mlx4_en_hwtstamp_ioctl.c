
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int config ;
struct TYPE_3__ {int flags2; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 scalar_t__ mlx4_en_timestamp_config (struct net_device*,int,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_hwtstamp_ioctl(struct net_device *dev, struct ifreq *ifr)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 struct hwtstamp_config config;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 if (config.flags)
  return -EINVAL;


 if (!(mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS))
  return -EINVAL;


 switch (config.tx_type) {
 case 129:
 case 128:
  break;
 default:
  return -ERANGE;
 }


 switch (config.rx_filter) {
 case 143:
  break;
 case 144:
 case 130:
 case 141:
 case 140:
 case 142:
 case 133:
 case 132:
 case 134:
 case 136:
 case 135:
 case 137:
 case 138:
 case 131:
 case 139:
  config.rx_filter = 144;
  break;
 default:
  return -ERANGE;
 }

 if (mlx4_en_timestamp_config(dev, config.tx_type, config.rx_filter)) {
  config.tx_type = 129;
  config.rx_filter = 143;
 }

 return copy_to_user(ifr->ifr_data, &config,
       sizeof(config)) ? -EFAULT : 0;
}
