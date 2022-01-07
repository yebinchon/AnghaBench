
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int eee_status; int link_status; scalar_t__ check_kr2_recovery_cnt; scalar_t__ phy_flags; int mac_type; int flow_ctrl; int duplex; scalar_t__ line_speed; scalar_t__ link_up; scalar_t__ phy_link_up; } ;
struct link_params {int req_fc_auto_adv; int port; int feature_config_flags; int num_phys; int loopback_mode; int switch_cfg; int link_flags; int * req_flow_ctrl; int * req_line_speed; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FLOW_CTRL_NONE ;
 int CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int FEATURE_CONFIG_PFC_ENABLED ;
 int LINK_STATUS_PFC_ENABLED ;






 int MAC_TYPE_NONE ;
 int NETIF_MSG_LINK ;
 int NIG_MASK_MI_INT ;
 int NIG_MASK_SERDES0_LINK_STATUS ;
 int NIG_MASK_XGXS0_LINK10G ;
 int NIG_MASK_XGXS0_LINK_STATUS ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 int PHY_INITIALIZED ;
 int SWITCH_CFG_10G ;
 int bnx2x_avoid_link_flap (struct link_params*,struct link_vars*) ;
 int bnx2x_bits_dis (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_cannot_avoid_link_flap (struct link_params*,struct link_vars*,int) ;
 int bnx2x_check_lfa (struct link_params*) ;
 int bnx2x_emac_init (struct link_params*,struct link_vars*) ;
 int bnx2x_init_bmac_loopback (struct link_params*,struct link_vars*) ;
 int bnx2x_init_emac_loopback (struct link_params*,struct link_vars*) ;
 int bnx2x_init_umac_loopback (struct link_params*,struct link_vars*) ;
 int bnx2x_init_xgxs_loopback (struct link_params*,struct link_vars*) ;
 int bnx2x_init_xmac_loopback (struct link_params*,struct link_vars*) ;
 int bnx2x_link_initialize (struct link_params*,struct link_vars*) ;
 int bnx2x_link_int_enable (struct link_params*) ;
 int bnx2x_serdes_deassert (struct bnx2x*,int) ;
 int bnx2x_set_rx_filter (struct link_params*,int) ;
 int bnx2x_update_mng (struct link_params*,int ) ;
 int bnx2x_update_mng_eee (struct link_params*,int ) ;
 int bnx2x_xgxs_deassert (struct link_params*) ;
 int msleep (int) ;
 int set_phy_vars (struct link_params*,struct link_vars*) ;

int bnx2x_phy_init(struct link_params *params, struct link_vars *vars)
{
 int lfa_status;
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "Phy Initialization started\n");
 DP(NETIF_MSG_LINK, "(1) req_speed %d, req_flowctrl %d\n",
     params->req_line_speed[0], params->req_flow_ctrl[0]);
 DP(NETIF_MSG_LINK, "(2) req_speed %d, req_flowctrl %d\n",
     params->req_line_speed[1], params->req_flow_ctrl[1]);
 DP(NETIF_MSG_LINK, "req_adv_flow_ctrl 0x%x\n", params->req_fc_auto_adv);
 vars->link_status = 0;
 vars->phy_link_up = 0;
 vars->link_up = 0;
 vars->line_speed = 0;
 vars->duplex = DUPLEX_FULL;
 vars->flow_ctrl = BNX2X_FLOW_CTRL_NONE;
 vars->mac_type = MAC_TYPE_NONE;
 vars->phy_flags = 0;
 vars->check_kr2_recovery_cnt = 0;
 params->link_flags = PHY_INITIALIZED;

 bnx2x_set_rx_filter(params, 1);

 lfa_status = bnx2x_check_lfa(params);

 if (lfa_status == 0) {
  DP(NETIF_MSG_LINK, "Link Flap Avoidance in progress\n");
  return bnx2x_avoid_link_flap(params, vars);
 }

 DP(NETIF_MSG_LINK, "Cannot avoid link flap lfa_sta=0x%x\n",
         lfa_status);
 bnx2x_cannot_avoid_link_flap(params, vars, lfa_status);


 bnx2x_bits_dis(bp, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
         (NIG_MASK_XGXS0_LINK_STATUS |
   NIG_MASK_XGXS0_LINK10G |
   NIG_MASK_SERDES0_LINK_STATUS |
   NIG_MASK_MI_INT));

 bnx2x_emac_init(params, vars);

 if (params->feature_config_flags & FEATURE_CONFIG_PFC_ENABLED)
  vars->link_status |= LINK_STATUS_PFC_ENABLED;

 if (params->num_phys == 0) {
  DP(NETIF_MSG_LINK, "No phy found for initialization !!\n");
  return -EINVAL;
 }
 set_phy_vars(params, vars);

 DP(NETIF_MSG_LINK, "Num of phys on board: %d\n", params->num_phys);
 switch (params->loopback_mode) {
 case 133:
  bnx2x_init_bmac_loopback(params, vars);
  break;
 case 132:
  bnx2x_init_emac_loopback(params, vars);
  break;
 case 128:
  bnx2x_init_xmac_loopback(params, vars);
  break;
 case 130:
  bnx2x_init_umac_loopback(params, vars);
  break;
 case 129:
 case 131:
  bnx2x_init_xgxs_loopback(params, vars);
  break;
 default:
  if (!CHIP_IS_E3(bp)) {
   if (params->switch_cfg == SWITCH_CFG_10G)
    bnx2x_xgxs_deassert(params);
   else
    bnx2x_serdes_deassert(bp, params->port);
  }
  bnx2x_link_initialize(params, vars);
  msleep(30);
  bnx2x_link_int_enable(params);
  break;
 }
 bnx2x_update_mng(params, vars->link_status);

 bnx2x_update_mng_eee(params, vars->eee_status);
 return 0;
}
