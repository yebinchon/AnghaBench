
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {scalar_t__ mac_type; int link_up; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ MAC_TYPE_EMAC ;
 int NETIF_MSG_LINK ;
 int bnx2x_emac_get_pfc_stat (struct link_params*,int *,int *) ;

void bnx2x_pfc_statistic(struct link_params *params, struct link_vars *vars,
    u32 pfc_frames_sent[2],
    u32 pfc_frames_received[2])
{

 struct bnx2x *bp = params->bp;

 DP(NETIF_MSG_LINK, "pfc statistic\n");

 if (!vars->link_up)
  return;

 if (vars->mac_type == MAC_TYPE_EMAC) {
  DP(NETIF_MSG_LINK, "About to read PFC stats from EMAC\n");
  bnx2x_emac_get_pfc_stat(params, pfc_frames_sent,
     pfc_frames_received);
 }
}
