
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {size_t cid_index; } ;
struct TYPE_4__ {TYPE_1__ terminate; } ;
struct bnx2x_queue_state_params {TYPE_2__ params; struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {size_t max_cos; int * cids; int cl_id; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,size_t) ;
 int EINVAL ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_TERMINATE ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline int bnx2x_q_send_terminate(struct bnx2x *bp,
     struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;
 u8 cid_index = params->params.terminate.cid_index;

 if (cid_index >= o->max_cos) {
  BNX2X_ERR("queue[%d]: cid_index (%d) is out of range\n",
     o->cl_id, cid_index);
  return -EINVAL;
 }

 return bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_TERMINATE,
        o->cids[cid_index], 0, 0, ETH_CONNECTION_TYPE);
}
