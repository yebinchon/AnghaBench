
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;
struct link_vars {size_t line_speed; size_t phy_flags; size_t link_status; size_t flow_ctrl; int phy_link_up; int link_up; scalar_t__ fault_detected; int eee_status; int duplex; } ;
struct link_params {size_t port; size_t num_phys; int feature_config_flags; struct bnx2x_phy* phy; int multi_phy_config; struct bnx2x* bp; } ;
struct bnx2x_phy {size_t (* read_status ) (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;int supported; int flags; int (* config_init ) (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;int (* phy_specific_func ) (struct bnx2x_phy*,struct link_params*,int ) ;} ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E3 (struct bnx2x*) ;
 int DISABLE_TX ;
 int DP (int ,char*,...) ;
 int DRV_MSG_CODE_LINK_STATUS_CHANGED ;
 int DUPLEX_FULL ;
 size_t EXT_PHY1 ;
 size_t EXT_PHY2 ;
 int FEATURE_CONFIG_BC_SUPPORTS_AFEX ;
 int FEATURE_CONFIG_PFC_ENABLED ;
 size_t FLAGS_INIT_XGXS_FIRST ;
 int FLAGS_REARM_LATCH_SIGNAL ;
 size_t INT_PHY ;
 size_t LINK_STATUS_PFC_ENABLED ;
 size_t LINK_STATUS_SERDES_LINK ;
 size_t LINK_UPDATE_MASK ;
 int MAX_PHYS ;
 int NETIF_MSG_LINK ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 scalar_t__ NIG_REG_EMAC0_STATUS_MISC_MI_INT ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 scalar_t__ NIG_REG_NIG_EMAC0_EN ;
 scalar_t__ NIG_REG_SERDES0_STATUS_LINK_STATUS ;
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ;
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK10G ;
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK_STATUS ;
 size_t PHY_HALF_OPEN_CONN_FLAG ;
 size_t PHY_SGMII_FLAG ;
 size_t PHY_XGXS_FLAG ;



 size_t REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 scalar_t__ SINGLE_MEDIA_DIRECT (struct link_params*) ;
 size_t SPEED_1000 ;
 size_t SPEED_10000 ;
 int SUPPORTED_FIBRE ;
 scalar_t__ USES_WARPCORE (struct bnx2x*) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 int bnx2x_link_int_ack (struct link_params*,struct link_vars*,size_t) ;
 int bnx2x_phy_selection (struct link_params*) ;
 int bnx2x_rearm_latch_signal (struct bnx2x*,size_t,int) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;
 int bnx2x_update_link_down (struct link_params*,struct link_vars*) ;
 int bnx2x_update_link_up (struct link_params*,struct link_vars*,size_t) ;
 size_t stub1 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 size_t stub2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int stub3 (struct bnx2x_phy*,struct link_params*,int ) ;
 int stub4 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int usleep_range (int,int) ;

int bnx2x_link_update(struct link_params *params, struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 struct link_vars phy_vars[MAX_PHYS];
 u8 port = params->port;
 u8 link_10g_plus, phy_index;
 u8 ext_phy_link_up = 0, cur_link_up;
 int rc = 0;
 u8 is_mi_int = 0;
 u16 ext_phy_line_speed = 0, prev_line_speed = vars->line_speed;
 u8 active_external_phy = INT_PHY;
 vars->phy_flags &= ~PHY_HALF_OPEN_CONN_FLAG;
 vars->link_status &= ~LINK_UPDATE_MASK;
 for (phy_index = INT_PHY; phy_index < params->num_phys;
       phy_index++) {
  phy_vars[phy_index].flow_ctrl = 0;
  phy_vars[phy_index].link_status = 0;
  phy_vars[phy_index].line_speed = 0;
  phy_vars[phy_index].duplex = DUPLEX_FULL;
  phy_vars[phy_index].phy_link_up = 0;
  phy_vars[phy_index].link_up = 0;
  phy_vars[phy_index].fault_detected = 0;

  phy_vars[phy_index].eee_status = vars->eee_status;
 }

 if (USES_WARPCORE(bp))
  bnx2x_set_aer_mmd(params, &params->phy[INT_PHY]);

 DP(NETIF_MSG_LINK, "port %x, XGXS?%x, int_status 0x%x\n",
   port, (vars->phy_flags & PHY_XGXS_FLAG),
   REG_RD(bp, NIG_REG_STATUS_INTERRUPT_PORT0 + port*4));

 is_mi_int = (u8)(REG_RD(bp, NIG_REG_EMAC0_STATUS_MISC_MI_INT +
    port*0x18) > 0);
 DP(NETIF_MSG_LINK, "int_mask 0x%x MI_INT %x, SERDES_LINK %x\n",
   REG_RD(bp, NIG_REG_MASK_INTERRUPT_PORT0 + port*4),
   is_mi_int,
   REG_RD(bp, NIG_REG_SERDES0_STATUS_LINK_STATUS + port*0x3c));

 DP(NETIF_MSG_LINK, " 10G %x, XGXS_LINK %x\n",
   REG_RD(bp, NIG_REG_XGXS0_STATUS_LINK10G + port*0x68),
   REG_RD(bp, NIG_REG_XGXS0_STATUS_LINK_STATUS + port*0x68));


 if (!CHIP_IS_E3(bp))
  REG_WR(bp, NIG_REG_NIG_EMAC0_EN + port*4, 0);
 for (phy_index = EXT_PHY1; phy_index < params->num_phys;
       phy_index++) {
  struct bnx2x_phy *phy = &params->phy[phy_index];
  if (!phy->read_status)
   continue;

  cur_link_up = phy->read_status(phy, params,
            &phy_vars[phy_index]);
  if (cur_link_up) {
   DP(NETIF_MSG_LINK, "phy in index %d link is up\n",
       phy_index);
  } else {
   DP(NETIF_MSG_LINK, "phy in index %d link is down\n",
       phy_index);
   continue;
  }

  if (!ext_phy_link_up) {
   ext_phy_link_up = 1;
   active_external_phy = phy_index;
  } else {
   switch (bnx2x_phy_selection(params)) {
   case 129:
   case 130:




    active_external_phy = EXT_PHY1;
    break;
   case 128:



    active_external_phy = EXT_PHY2;
    break;
   default:
    DP(NETIF_MSG_LINK, "Invalid link indication"
        "mpc=0x%x. DISABLING LINK !!!\n",
        params->multi_phy_config);
    ext_phy_link_up = 0;
    break;
   }
  }
 }
 prev_line_speed = vars->line_speed;






 if (params->phy[INT_PHY].read_status)
  params->phy[INT_PHY].read_status(
   &params->phy[INT_PHY],
   params, vars);







 if (active_external_phy > INT_PHY) {
  vars->flow_ctrl = phy_vars[active_external_phy].flow_ctrl;



  vars->link_status |= phy_vars[active_external_phy].link_status;




  if (active_external_phy == EXT_PHY1) {
   if (params->phy[EXT_PHY2].phy_specific_func) {
    DP(NETIF_MSG_LINK,
       "Disabling TX on EXT_PHY2\n");
    params->phy[EXT_PHY2].phy_specific_func(
     &params->phy[EXT_PHY2],
     params, DISABLE_TX);
   }
  }

  ext_phy_line_speed = phy_vars[active_external_phy].line_speed;
  vars->duplex = phy_vars[active_external_phy].duplex;
  if (params->phy[active_external_phy].supported &
      SUPPORTED_FIBRE)
   vars->link_status |= LINK_STATUS_SERDES_LINK;
  else
   vars->link_status &= ~LINK_STATUS_SERDES_LINK;

  vars->eee_status = phy_vars[active_external_phy].eee_status;

  DP(NETIF_MSG_LINK, "Active external phy selected: %x\n",
      active_external_phy);
 }

 for (phy_index = EXT_PHY1; phy_index < params->num_phys;
       phy_index++) {
  if (params->phy[phy_index].flags &
      FLAGS_REARM_LATCH_SIGNAL) {
   bnx2x_rearm_latch_signal(bp, port,
       phy_index ==
       active_external_phy);
   break;
  }
 }
 DP(NETIF_MSG_LINK, "vars->flow_ctrl = 0x%x, vars->link_status = 0x%x,"
     " ext_phy_line_speed = %d\n", vars->flow_ctrl,
     vars->link_status, ext_phy_line_speed);





 if (vars->phy_link_up) {
  if (!(SINGLE_MEDIA_DIRECT(params)) && ext_phy_link_up &&
      (ext_phy_line_speed != vars->line_speed)) {
   DP(NETIF_MSG_LINK, "Internal link speed %d is"
       " different than the external"
       " link speed %d\n", vars->line_speed,
       ext_phy_line_speed);
   vars->phy_link_up = 0;
  } else if (prev_line_speed != vars->line_speed) {
   REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4,
          0);
   usleep_range(1000, 2000);
  }
 }


 link_10g_plus = (vars->line_speed >= SPEED_10000);

 bnx2x_link_int_ack(params, vars, link_10g_plus);
 if (!(SINGLE_MEDIA_DIRECT(params))) {
  DP(NETIF_MSG_LINK, "ext_phy_link_up = %d, int_link_up = %d,"
      " init_preceding = %d\n", ext_phy_link_up,
      vars->phy_link_up,
      params->phy[EXT_PHY1].flags &
      FLAGS_INIT_XGXS_FIRST);
  if (!(params->phy[EXT_PHY1].flags &
        FLAGS_INIT_XGXS_FIRST)
      && ext_phy_link_up && !vars->phy_link_up) {
   vars->line_speed = ext_phy_line_speed;
   if (vars->line_speed < SPEED_1000)
    vars->phy_flags |= PHY_SGMII_FLAG;
   else
    vars->phy_flags &= ~PHY_SGMII_FLAG;

   if (params->phy[INT_PHY].config_init)
    params->phy[INT_PHY].config_init(
     &params->phy[INT_PHY], params,
      vars);
  }
 }



 vars->link_up = (vars->phy_link_up &&
    (ext_phy_link_up ||
     SINGLE_MEDIA_DIRECT(params)) &&
    (phy_vars[active_external_phy].fault_detected == 0));


 if (params->feature_config_flags & FEATURE_CONFIG_PFC_ENABLED)
  vars->link_status |= LINK_STATUS_PFC_ENABLED;
 else
  vars->link_status &= ~LINK_STATUS_PFC_ENABLED;

 if (vars->link_up)
  rc = bnx2x_update_link_up(params, vars, link_10g_plus);
 else
  rc = bnx2x_update_link_down(params, vars);


 if (params->feature_config_flags & FEATURE_CONFIG_BC_SUPPORTS_AFEX)
  bnx2x_fw_command(bp, DRV_MSG_CODE_LINK_STATUS_CHANGED, 0);

 return rc;
}
