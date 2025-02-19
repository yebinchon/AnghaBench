
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct ethtool_ts_info {int so_timestamping; int tx_types; int rx_filters; } ;
struct TYPE_3__ {int flags2; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int ethtool_op_get_ts_info (struct net_device*,struct ethtool_ts_info*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_ts_info(struct net_device *dev,
          struct ethtool_ts_info *info)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int ret;

 ret = ethtool_op_get_ts_info(dev, info);
 if (ret)
  return ret;

 if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS) {
  info->so_timestamping |=
   SOF_TIMESTAMPING_TX_HARDWARE |
   SOF_TIMESTAMPING_RX_HARDWARE |
   SOF_TIMESTAMPING_RAW_HARDWARE;

  info->tx_types =
   (1 << HWTSTAMP_TX_OFF) |
   (1 << HWTSTAMP_TX_ON);

  info->rx_filters =
   (1 << HWTSTAMP_FILTER_NONE) |
   (1 << HWTSTAMP_FILTER_ALL);
 }

 return ret;
}
