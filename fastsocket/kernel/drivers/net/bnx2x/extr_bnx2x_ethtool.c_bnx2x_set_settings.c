
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int advertising; scalar_t__ duplex; int port; scalar_t__ autoneg; int maxrxpkt; int maxtxpkt; int transceiver; int phy_address; int supported; int cmd; } ;
struct TYPE_9__ {int multi_phy_config; int* req_line_speed; scalar_t__* req_duplex; TYPE_1__* phy; int * speed_cap_mask; } ;
struct TYPE_10__ {int* supported; int* advertising; } ;
struct TYPE_8__ {scalar_t__ bc_ver; } ;
struct TYPE_7__ {int line_speed; } ;
struct bnx2x {scalar_t__ state; int pending_max; TYPE_4__ link_params; TYPE_5__ port; TYPE_3__ common; TYPE_2__ link_vars; } ;
struct TYPE_6__ {scalar_t__ type; int media_type; } ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_10000baseKX4_Full ;
 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_20000baseKR2_Full ;
 int ADVERTISED_2500baseX_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 scalar_t__ AUTONEG_ENABLE ;
 int BNX2X_MSG_ETHTOOL ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int DP (int ,char*,...) ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_UNKNOWN ;
 int EINVAL ;
 int ETH_PHY_SFP_1G_FIBER ;
 size_t EXT_PHY1 ;
 scalar_t__ IS_MF_SD (struct bnx2x*) ;
 scalar_t__ IS_MF_SI (struct bnx2x*) ;


 int PORT_HW_CFG_PHY_SELECTION_FIRST_PHY ;
 int PORT_HW_CFG_PHY_SELECTION_MASK ;
 int PORT_HW_CFG_PHY_SELECTION_SECOND_PHY ;
 int PORT_HW_CFG_PHY_SWAPPED_ENABLED ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_20G ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 ;

 scalar_t__ REQ_BC_VER_4_SET_MF_BW ;





 int SPEED_AUTO_NEG ;
 int STATS_EVENT_STOP ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int bnx2x_get_cur_phy_idx (struct bnx2x*) ;
 int bnx2x_get_link_cfg_idx (struct bnx2x*) ;
 int bnx2x_link_set (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 int bnx2x_update_max_mf_config (struct bnx2x*,int) ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct bnx2x *bp = netdev_priv(dev);
 u32 advertising, cfg_idx, old_multi_phy_config, new_multi_phy_config;
 u32 speed, phy_idx;

 if (IS_MF_SD(bp))
  return 0;

 DP(BNX2X_MSG_ETHTOOL, "ethtool_cmd: cmd %d\n"
    "  supported 0x%x  advertising 0x%x  speed %u\n"
    "  duplex %d  port %d  phy_address %d  transceiver %d\n"
    "  autoneg %d  maxtxpkt %d  maxrxpkt %d\n",
    cmd->cmd, cmd->supported, cmd->advertising,
    ethtool_cmd_speed(cmd),
    cmd->duplex, cmd->port, cmd->phy_address, cmd->transceiver,
    cmd->autoneg, cmd->maxtxpkt, cmd->maxrxpkt);

 speed = ethtool_cmd_speed(cmd);


 if (cmd->duplex == DUPLEX_UNKNOWN)
  cmd->duplex = DUPLEX_FULL;

 if (IS_MF_SI(bp)) {
  u32 part;
  u32 line_speed = bp->link_vars.line_speed;


  if (!line_speed)
   line_speed = 10000;

  if (bp->common.bc_ver < REQ_BC_VER_4_SET_MF_BW) {
   DP(BNX2X_MSG_ETHTOOL,
      "To set speed BC %X or higher is required, please upgrade BC\n",
      REQ_BC_VER_4_SET_MF_BW);
   return -EINVAL;
  }

  part = (speed * 100) / line_speed;

  if (line_speed < speed || !part) {
   DP(BNX2X_MSG_ETHTOOL,
      "Speed setting should be in a range from 1%% to 100%% of actual line speed\n");
   return -EINVAL;
  }

  if (bp->state != BNX2X_STATE_OPEN)

   bp->pending_max = part;
  else
   bnx2x_update_max_mf_config(bp, part);

  return 0;
 }

 cfg_idx = bnx2x_get_link_cfg_idx(bp);
 old_multi_phy_config = bp->link_params.multi_phy_config;
 switch (cmd->port) {
 case 133:
  if (bp->port.supported[cfg_idx] & SUPPORTED_TP)
   break;

  if (!(bp->port.supported[0] & SUPPORTED_TP ||
        bp->port.supported[1] & SUPPORTED_TP)) {
   DP(BNX2X_MSG_ETHTOOL, "Unsupported port type\n");
   return -EINVAL;
  }
  bp->link_params.multi_phy_config &=
   ~PORT_HW_CFG_PHY_SELECTION_MASK;
  if (bp->link_params.multi_phy_config &
      PORT_HW_CFG_PHY_SWAPPED_ENABLED)
   bp->link_params.multi_phy_config |=
   PORT_HW_CFG_PHY_SELECTION_SECOND_PHY;
  else
   bp->link_params.multi_phy_config |=
   PORT_HW_CFG_PHY_SELECTION_FIRST_PHY;
  break;
 case 134:
 case 135:
  if (bp->port.supported[cfg_idx] & SUPPORTED_FIBRE)
   break;

  if (!(bp->port.supported[0] & SUPPORTED_FIBRE ||
        bp->port.supported[1] & SUPPORTED_FIBRE)) {
   DP(BNX2X_MSG_ETHTOOL, "Unsupported port type\n");
   return -EINVAL;
  }
  bp->link_params.multi_phy_config &=
   ~PORT_HW_CFG_PHY_SELECTION_MASK;
  if (bp->link_params.multi_phy_config &
      PORT_HW_CFG_PHY_SWAPPED_ENABLED)
   bp->link_params.multi_phy_config |=
   PORT_HW_CFG_PHY_SELECTION_FIRST_PHY;
  else
   bp->link_params.multi_phy_config |=
   PORT_HW_CFG_PHY_SELECTION_SECOND_PHY;
  break;
 default:
  DP(BNX2X_MSG_ETHTOOL, "Unsupported port type\n");
  return -EINVAL;
 }

 new_multi_phy_config = bp->link_params.multi_phy_config;

 cfg_idx = bnx2x_get_link_cfg_idx(bp);

 bp->link_params.multi_phy_config = old_multi_phy_config;
 DP(BNX2X_MSG_ETHTOOL, "cfg_idx = %x\n", cfg_idx);

 if (cmd->autoneg == AUTONEG_ENABLE) {
  u32 an_supported_speed = bp->port.supported[cfg_idx];
  if (bp->link_params.phy[EXT_PHY1].type ==
      PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833)
   an_supported_speed |= (SUPPORTED_100baseT_Half |
            SUPPORTED_100baseT_Full);
  if (!(bp->port.supported[cfg_idx] & SUPPORTED_Autoneg)) {
   DP(BNX2X_MSG_ETHTOOL, "Autoneg not supported\n");
   return -EINVAL;
  }


  if (cmd->advertising & ~an_supported_speed) {
   DP(BNX2X_MSG_ETHTOOL,
      "Advertisement parameters are not supported\n");
   return -EINVAL;
  }

  bp->link_params.req_line_speed[cfg_idx] = SPEED_AUTO_NEG;
  bp->link_params.req_duplex[cfg_idx] = cmd->duplex;
  bp->port.advertising[cfg_idx] = (ADVERTISED_Autoneg |
      cmd->advertising);
  if (cmd->advertising) {

   bp->link_params.speed_cap_mask[cfg_idx] = 0;
   if (cmd->advertising & ADVERTISED_10baseT_Half) {
    bp->link_params.speed_cap_mask[cfg_idx] |=
    PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF;
   }
   if (cmd->advertising & ADVERTISED_10baseT_Full)
    bp->link_params.speed_cap_mask[cfg_idx] |=
    PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL;

   if (cmd->advertising & ADVERTISED_100baseT_Full)
    bp->link_params.speed_cap_mask[cfg_idx] |=
    PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL;

   if (cmd->advertising & ADVERTISED_100baseT_Half) {
    bp->link_params.speed_cap_mask[cfg_idx] |=
         PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF;
   }
   if (cmd->advertising & ADVERTISED_1000baseT_Half) {
    bp->link_params.speed_cap_mask[cfg_idx] |=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_1G;
   }
   if (cmd->advertising & (ADVERTISED_1000baseT_Full |
      ADVERTISED_1000baseKX_Full))
    bp->link_params.speed_cap_mask[cfg_idx] |=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_1G;

   if (cmd->advertising & (ADVERTISED_10000baseT_Full |
      ADVERTISED_10000baseKX4_Full |
      ADVERTISED_10000baseKR_Full))
    bp->link_params.speed_cap_mask[cfg_idx] |=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_10G;

   if (cmd->advertising & ADVERTISED_20000baseKR2_Full)
    bp->link_params.speed_cap_mask[cfg_idx] |=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_20G;
  }
 } else {

  switch (speed) {
  case 132:
   if (cmd->duplex == DUPLEX_FULL) {
    if (!(bp->port.supported[cfg_idx] &
          SUPPORTED_10baseT_Full)) {
     DP(BNX2X_MSG_ETHTOOL,
        "10M full not supported\n");
     return -EINVAL;
    }

    advertising = (ADVERTISED_10baseT_Full |
            ADVERTISED_TP);
   } else {
    if (!(bp->port.supported[cfg_idx] &
          SUPPORTED_10baseT_Half)) {
     DP(BNX2X_MSG_ETHTOOL,
        "10M half not supported\n");
     return -EINVAL;
    }

    advertising = (ADVERTISED_10baseT_Half |
            ADVERTISED_TP);
   }
   break;

  case 131:
   if (cmd->duplex == DUPLEX_FULL) {
    if (!(bp->port.supported[cfg_idx] &
      SUPPORTED_100baseT_Full)) {
     DP(BNX2X_MSG_ETHTOOL,
        "100M full not supported\n");
     return -EINVAL;
    }

    advertising = (ADVERTISED_100baseT_Full |
            ADVERTISED_TP);
   } else {
    if (!(bp->port.supported[cfg_idx] &
      SUPPORTED_100baseT_Half)) {
     DP(BNX2X_MSG_ETHTOOL,
        "100M half not supported\n");
     return -EINVAL;
    }

    advertising = (ADVERTISED_100baseT_Half |
            ADVERTISED_TP);
   }
   break;

  case 130:
   if (cmd->duplex != DUPLEX_FULL) {
    DP(BNX2X_MSG_ETHTOOL,
       "1G half not supported\n");
    return -EINVAL;
   }

   if (!(bp->port.supported[cfg_idx] &
         SUPPORTED_1000baseT_Full)) {
    DP(BNX2X_MSG_ETHTOOL,
       "1G full not supported\n");
    return -EINVAL;
   }

   advertising = (ADVERTISED_1000baseT_Full |
           ADVERTISED_TP);
   break;

  case 128:
   if (cmd->duplex != DUPLEX_FULL) {
    DP(BNX2X_MSG_ETHTOOL,
       "2.5G half not supported\n");
    return -EINVAL;
   }

   if (!(bp->port.supported[cfg_idx]
         & SUPPORTED_2500baseX_Full)) {
    DP(BNX2X_MSG_ETHTOOL,
       "2.5G full not supported\n");
    return -EINVAL;
   }

   advertising = (ADVERTISED_2500baseX_Full |
           ADVERTISED_TP);
   break;

  case 129:
   if (cmd->duplex != DUPLEX_FULL) {
    DP(BNX2X_MSG_ETHTOOL,
       "10G half not supported\n");
    return -EINVAL;
   }
   phy_idx = bnx2x_get_cur_phy_idx(bp);
   if (!(bp->port.supported[cfg_idx]
         & SUPPORTED_10000baseT_Full) ||
       (bp->link_params.phy[phy_idx].media_type ==
        ETH_PHY_SFP_1G_FIBER)) {
    DP(BNX2X_MSG_ETHTOOL,
       "10G full not supported\n");
    return -EINVAL;
   }

   advertising = (ADVERTISED_10000baseT_Full |
           ADVERTISED_FIBRE);
   break;

  default:
   DP(BNX2X_MSG_ETHTOOL, "Unsupported speed %u\n", speed);
   return -EINVAL;
  }

  bp->link_params.req_line_speed[cfg_idx] = speed;
  bp->link_params.req_duplex[cfg_idx] = cmd->duplex;
  bp->port.advertising[cfg_idx] = advertising;
 }

 DP(BNX2X_MSG_ETHTOOL, "req_line_speed %d\n"
    "  req_duplex %d  advertising 0x%x\n",
    bp->link_params.req_line_speed[cfg_idx],
    bp->link_params.req_duplex[cfg_idx],
    bp->port.advertising[cfg_idx]);


 bp->link_params.multi_phy_config = new_multi_phy_config;
 if (netif_running(dev)) {
  bnx2x_stats_handle(bp, STATS_EVENT_STOP);
  bnx2x_link_set(bp);
 }

 return 0;
}
