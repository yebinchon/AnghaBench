
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct bnx2x_func_afex_viflists_params {int afex_vif_list_command; int func_to_clear; int func_bit_map; int vif_list_index; } ;
struct TYPE_2__ {struct bnx2x_func_afex_viflists_params afex_viflists; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {scalar_t__ afex_rdata; } ;
struct bnx2x {int dummy; } ;
struct afex_vif_list_ramrod_data {int func_to_clear; int func_bit_map; int vif_list_index; int afex_vif_list_command; int echo; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int ,int ,int ,int ) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 int memset (struct afex_vif_list_ramrod_data*,int ,int) ;

__attribute__((used)) static
inline int bnx2x_func_send_afex_viflists(struct bnx2x *bp,
      struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct afex_vif_list_ramrod_data *rdata =
  (struct afex_vif_list_ramrod_data *)o->afex_rdata;
 struct bnx2x_func_afex_viflists_params *afex_vif_params =
  &params->params.afex_viflists;
 u64 *p_rdata = (u64 *)rdata;

 memset(rdata, 0, sizeof(*rdata));


 rdata->vif_list_index = cpu_to_le16(afex_vif_params->vif_list_index);
 rdata->func_bit_map = afex_vif_params->func_bit_map;
 rdata->afex_vif_list_command = afex_vif_params->afex_vif_list_command;
 rdata->func_to_clear = afex_vif_params->func_to_clear;


 rdata->echo = afex_vif_params->afex_vif_list_command;
 DP(BNX2X_MSG_SP, "afex: ramrod lists, cmd 0x%x index 0x%x func_bit_map 0x%x func_to_clr 0x%x\n",
    rdata->afex_vif_list_command, rdata->vif_list_index,
    rdata->func_bit_map, rdata->func_to_clear);


 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS, 0,
        U64_HI(*p_rdata), U64_LO(*p_rdata),
        NONE_CONNECTION_TYPE);
}
