
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int transciver; int link_speed; } ;
struct mlx4_en_priv {TYPE_1__ port_state; int port; int mdev; } ;
struct ethtool_cmd {int duplex; int port; int transceiver; int advertising; int supported; int autoneg; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int ENOMEM ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int XCVR_EXTERNAL ;
 int XCVR_INTERNAL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 scalar_t__ mlx4_en_QUERY_PORT (int ,int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int trans_type;

 cmd->autoneg = AUTONEG_DISABLE;
 cmd->supported = SUPPORTED_10000baseT_Full;
 cmd->advertising = ADVERTISED_10000baseT_Full;

 if (mlx4_en_QUERY_PORT(priv->mdev, priv->port))
  return -ENOMEM;

 trans_type = priv->port_state.transciver;
 if (netif_carrier_ok(dev)) {
  ethtool_cmd_speed_set(cmd, priv->port_state.link_speed);
  cmd->duplex = DUPLEX_FULL;
 } else {
  ethtool_cmd_speed_set(cmd, -1);
  cmd->duplex = -1;
 }

 if (trans_type > 0 && trans_type <= 0xC) {
  cmd->port = PORT_FIBRE;
  cmd->transceiver = XCVR_EXTERNAL;
  cmd->supported |= SUPPORTED_FIBRE;
  cmd->advertising |= ADVERTISED_FIBRE;
 } else if (trans_type == 0x80 || trans_type == 0) {
  cmd->port = PORT_TP;
  cmd->transceiver = XCVR_INTERNAL;
  cmd->supported |= SUPPORTED_TP;
  cmd->advertising |= ADVERTISED_TP;
 } else {
  cmd->port = -1;
  cmd->transceiver = -1;
 }
 return 0;
}
