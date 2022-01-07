
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct function_start_data {int gre_tunnel_rss; int gre_tunnel_mode; int network_cos_mode; int path_id; int sd_vlan_tag; scalar_t__ function_mode; } ;
struct bnx2x_func_start_params {int gre_tunnel_rss; int gre_tunnel_mode; int network_cos_mode; int sd_vlan_tag; scalar_t__ mf_mode; } ;
struct TYPE_2__ {struct bnx2x_func_start_params start; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int BP_PATH (struct bnx2x*) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_START ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 int memset (struct function_start_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_func_send_start(struct bnx2x *bp,
     struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct function_start_data *rdata =
  (struct function_start_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_func_start_params *start_params = &params->params.start;

 memset(rdata, 0, sizeof(*rdata));


 rdata->function_mode = (u8)start_params->mf_mode;
 rdata->sd_vlan_tag = cpu_to_le16(start_params->sd_vlan_tag);
 rdata->path_id = BP_PATH(bp);
 rdata->network_cos_mode = start_params->network_cos_mode;
 rdata->gre_tunnel_mode = start_params->gre_tunnel_mode;
 rdata->gre_tunnel_rss = start_params->gre_tunnel_rss;
 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_FUNCTION_START, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
