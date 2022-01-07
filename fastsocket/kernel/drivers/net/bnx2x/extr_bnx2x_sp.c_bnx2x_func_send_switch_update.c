
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function_update_data {int tx_switch_suspend_change_flg; int echo; int tx_switch_suspend; } ;
struct bnx2x_func_switch_update_params {int suspend; } ;
struct TYPE_2__ {struct bnx2x_func_switch_update_params switch_update; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE ;
 int SWITCH_UPDATE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int memset (struct function_update_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_func_send_switch_update(struct bnx2x *bp,
     struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct function_update_data *rdata =
  (struct function_update_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_func_switch_update_params *switch_update_params =
  &params->params.switch_update;

 memset(rdata, 0, sizeof(*rdata));


 rdata->tx_switch_suspend_change_flg = 1;
 rdata->tx_switch_suspend = switch_update_params->suspend;
 rdata->echo = SWITCH_UPDATE;

 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
