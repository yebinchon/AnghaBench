
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; int cmd; } ;
struct TYPE_2__ {int* req_flow_ctrl; int req_fc_auto_adv; } ;
struct bnx2x {TYPE_1__ link_params; } ;


 int BNX2X_FLOW_CTRL_AUTO ;
 int BNX2X_FLOW_CTRL_RX ;
 int BNX2X_FLOW_CTRL_TX ;
 int BNX2X_MSG_ETHTOOL ;
 int DP (int ,char*,int ,int,int,int) ;
 int bnx2x_get_link_cfg_idx (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2x_get_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *epause)
{
 struct bnx2x *bp = netdev_priv(dev);
 int cfg_idx = bnx2x_get_link_cfg_idx(bp);
 int cfg_reg;

 epause->autoneg = (bp->link_params.req_flow_ctrl[cfg_idx] ==
      BNX2X_FLOW_CTRL_AUTO);

 if (!epause->autoneg)
  cfg_reg = bp->link_params.req_flow_ctrl[cfg_idx];
 else
  cfg_reg = bp->link_params.req_fc_auto_adv;

 epause->rx_pause = ((cfg_reg & BNX2X_FLOW_CTRL_RX) ==
       BNX2X_FLOW_CTRL_RX);
 epause->tx_pause = ((cfg_reg & BNX2X_FLOW_CTRL_TX) ==
       BNX2X_FLOW_CTRL_TX);

 DP(BNX2X_MSG_ETHTOOL, "ethtool_pauseparam: cmd %d\n"
    "  autoneg %d  rx_pause %d  tx_pause %d\n",
    epause->cmd, epause->autoneg, epause->rx_pause, epause->tx_pause);
}
