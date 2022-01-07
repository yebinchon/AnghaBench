
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct client_update_ramrod_data {int dummy; } ;
struct bnx2x_queue_update_params {size_t cid_index; } ;
struct TYPE_2__ {struct bnx2x_queue_update_params update; } ;
struct bnx2x_queue_state_params {TYPE_1__ params; struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {size_t max_cos; int * cids; int cl_id; int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int BNX2X_ERR (char*,int ,size_t) ;
 int EINVAL ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_CLIENT_UPDATE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_q_fill_update_data (struct bnx2x*,struct bnx2x_queue_sp_obj*,struct bnx2x_queue_update_params*,struct client_update_ramrod_data*) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int memset (struct client_update_ramrod_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_q_send_update(struct bnx2x *bp,
          struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;
 struct client_update_ramrod_data *rdata =
  (struct client_update_ramrod_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_queue_update_params *update_params =
  &params->params.update;
 u8 cid_index = update_params->cid_index;

 if (cid_index >= o->max_cos) {
  BNX2X_ERR("queue[%d]: cid_index (%d) is out of range\n",
     o->cl_id, cid_index);
  return -EINVAL;
 }


 memset(rdata, 0, sizeof(*rdata));


 bnx2x_q_fill_update_data(bp, o, update_params, rdata);
 return bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_CLIENT_UPDATE,
        o->cids[cid_index], U64_HI(data_mapping),
        U64_LO(data_mapping), ETH_CONNECTION_TYPE);
}
