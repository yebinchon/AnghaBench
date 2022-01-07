
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function_update_data {int vif_id_change_flg; int afex_default_vlan_change_flg; int allowed_priorities_change_flg; int allowed_priorities; void* afex_default_vlan; void* vif_id; int echo; } ;
struct bnx2x_func_afex_update_params {int allowed_priorities; int afex_default_vlan; int vif_id; } ;
struct TYPE_2__ {struct bnx2x_func_afex_update_params afex_update; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int afex_rdata_mapping; scalar_t__ afex_rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int AFEX_UPDATE ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,void*,void*,int ) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 void* cpu_to_le16 (int ) ;
 int memset (struct function_update_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_func_send_afex_update(struct bnx2x *bp,
      struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct function_update_data *rdata =
  (struct function_update_data *)o->afex_rdata;
 dma_addr_t data_mapping = o->afex_rdata_mapping;
 struct bnx2x_func_afex_update_params *afex_update_params =
  &params->params.afex_update;

 memset(rdata, 0, sizeof(*rdata));


 rdata->vif_id_change_flg = 1;
 rdata->vif_id = cpu_to_le16(afex_update_params->vif_id);
 rdata->afex_default_vlan_change_flg = 1;
 rdata->afex_default_vlan =
  cpu_to_le16(afex_update_params->afex_default_vlan);
 rdata->allowed_priorities_change_flg = 1;
 rdata->allowed_priorities = afex_update_params->allowed_priorities;
 rdata->echo = AFEX_UPDATE;







 DP(BNX2X_MSG_SP,
    "afex: sending func_update vif_id 0x%x dvlan 0x%x prio 0x%x\n",
    rdata->vif_id,
    rdata->afex_default_vlan, rdata->allowed_priorities);

 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
