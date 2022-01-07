
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_func_start_params {int gre_tunnel_rss; int gre_tunnel_mode; int network_cos_mode; int sd_vlan_tag; int mf_mode; } ;
struct TYPE_2__ {struct bnx2x_func_start_params start; } ;
struct bnx2x_func_state_params {int cmd; int * f_obj; int ramrod_flags; TYPE_1__ params; int * member_0; } ;
struct bnx2x {int mf_ov; int mf_mode; int func_obj; } ;


 int BNX2X_F_CMD_START ;
 int GRE_INNER_HEADERS_RSS ;
 int IPGRE_TUNNEL ;
 int OVERRIDE_COS ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static inline int bnx2x_func_start(struct bnx2x *bp)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_func_start_params *start_params =
  &func_params.params.start;


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_START;


 start_params->mf_mode = bp->mf_mode;
 start_params->sd_vlan_tag = bp->mf_ov;
 start_params->network_cos_mode = OVERRIDE_COS;

 start_params->gre_tunnel_mode = IPGRE_TUNNEL;
 start_params->gre_tunnel_rss = GRE_INNER_HEADERS_RSS;

 return bnx2x_func_state_change(bp, &func_params);
}
