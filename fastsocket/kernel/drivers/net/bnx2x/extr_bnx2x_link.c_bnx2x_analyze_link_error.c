
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct link_vars {int phy_flags; int link_up; int link_status; int periodic_flags; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 int LED_MODE_OFF ;
 int LED_MODE_OPER ;
 int LINK_STATUS_LINK_UP ;
 int NETIF_MSG_LINK ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int PERIODIC_FLAGS_LINK_EVENT ;


 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int SPEED_10000 ;
 int bnx2x_notify_link_changed (struct bnx2x*) ;
 int bnx2x_set_led (struct link_params*,struct link_vars*,int,int ) ;
 int bnx2x_sync_link (struct link_params*,struct link_vars*) ;
 int bnx2x_update_mng (struct link_params*,int) ;

__attribute__((used)) static u8 bnx2x_analyze_link_error(struct link_params *params,
        struct link_vars *vars, u32 status,
        u32 phy_flag, u32 link_flag, u8 notify)
{
 struct bnx2x *bp = params->bp;

 u8 led_mode;
 u32 old_status = (vars->phy_flags & phy_flag) ? 1 : 0;

 if ((status ^ old_status) == 0)
  return 0;


 switch (phy_flag) {
 case 129:
  DP(NETIF_MSG_LINK, "Analyze Remote Fault\n");
  break;
 case 128:
  DP(NETIF_MSG_LINK, "Analyze TX Fault\n");
  break;
 default:
  DP(NETIF_MSG_LINK, "Analyze UNKNOWN\n");
 }
 DP(NETIF_MSG_LINK, "Link changed:[%x %x]->%x\n", vars->link_up,
    old_status, status);




 if (status) {
  vars->link_status &= ~LINK_STATUS_LINK_UP;
  vars->link_status |= link_flag;
  vars->link_up = 0;
  vars->phy_flags |= phy_flag;


  REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 1);



  led_mode = LED_MODE_OFF;
 } else {
  vars->link_status |= LINK_STATUS_LINK_UP;
  vars->link_status &= ~link_flag;
  vars->link_up = 1;
  vars->phy_flags &= ~phy_flag;
  led_mode = LED_MODE_OPER;


  REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
 }
 bnx2x_sync_link(params, vars);

 bnx2x_set_led(params, vars, led_mode, SPEED_10000);


 bnx2x_update_mng(params, vars->link_status);


 vars->periodic_flags |= PERIODIC_FLAGS_LINK_EVENT;
 if (notify)
  bnx2x_notify_link_changed(bp);

 return 1;
}
