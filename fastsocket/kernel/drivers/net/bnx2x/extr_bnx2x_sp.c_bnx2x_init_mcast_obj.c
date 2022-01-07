
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int macs; } ;
struct TYPE_4__ {TYPE_1__ exact_match; } ;
struct bnx2x_mcast_obj {int max_cmd_len; void* set_registry_size; void* get_registry_size; int revert; int validate; int * set_one_rule; void* wait_comp; void* check_pending; int * hdl_restore; int * enqueue_cmd; int config_mcast; TYPE_2__ registry; int clear_sched; int set_sched; int check_sched; int sched_state; int pending_cmds_head; int engine_id; int raw; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
typedef int bnx2x_obj_type ;


 int BNX2X_FILTER_MCAST_SCHED ;
 int BNX2X_MAX_EMUL_MULTI ;
 int BNX2X_MAX_MULTICAST ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int INIT_LIST_HEAD (int *) ;
 int bnx2x_init_raw_obj (int *,int ,int ,int ,void*,int ,int,unsigned long*,int ) ;
 void* bnx2x_mcast_check_pending ;
 int bnx2x_mcast_check_sched ;
 int bnx2x_mcast_clear_sched ;
 void* bnx2x_mcast_enqueue_cmd ;
 void* bnx2x_mcast_get_registry_size_aprox ;
 void* bnx2x_mcast_get_registry_size_exact ;
 int * bnx2x_mcast_handle_restore_cmd_e1 ;
 int * bnx2x_mcast_handle_restore_cmd_e2 ;
 int bnx2x_mcast_revert_e1 ;
 int bnx2x_mcast_revert_e1h ;
 int bnx2x_mcast_revert_e2 ;
 int * bnx2x_mcast_set_one_rule_e1 ;
 int * bnx2x_mcast_set_one_rule_e2 ;
 void* bnx2x_mcast_set_registry_size_aprox ;
 void* bnx2x_mcast_set_registry_size_exact ;
 int bnx2x_mcast_set_sched ;
 int bnx2x_mcast_setup_e1 ;
 int bnx2x_mcast_setup_e1h ;
 int bnx2x_mcast_setup_e2 ;
 int bnx2x_mcast_validate_e1 ;
 int bnx2x_mcast_validate_e1h ;
 int bnx2x_mcast_validate_e2 ;
 void* bnx2x_mcast_wait ;
 int memset (struct bnx2x_mcast_obj*,int ,int) ;

void bnx2x_init_mcast_obj(struct bnx2x *bp,
     struct bnx2x_mcast_obj *mcast_obj,
     u8 mcast_cl_id, u32 mcast_cid, u8 func_id,
     u8 engine_id, void *rdata, dma_addr_t rdata_mapping,
     int state, unsigned long *pstate, bnx2x_obj_type type)
{
 memset(mcast_obj, 0, sizeof(*mcast_obj));

 bnx2x_init_raw_obj(&mcast_obj->raw, mcast_cl_id, mcast_cid, func_id,
      rdata, rdata_mapping, state, pstate, type);

 mcast_obj->engine_id = engine_id;

 INIT_LIST_HEAD(&mcast_obj->pending_cmds_head);

 mcast_obj->sched_state = BNX2X_FILTER_MCAST_SCHED;
 mcast_obj->check_sched = bnx2x_mcast_check_sched;
 mcast_obj->set_sched = bnx2x_mcast_set_sched;
 mcast_obj->clear_sched = bnx2x_mcast_clear_sched;

 if (CHIP_IS_E1(bp)) {
  mcast_obj->config_mcast = bnx2x_mcast_setup_e1;
  mcast_obj->enqueue_cmd = bnx2x_mcast_enqueue_cmd;
  mcast_obj->hdl_restore =
   bnx2x_mcast_handle_restore_cmd_e1;
  mcast_obj->check_pending = bnx2x_mcast_check_pending;

  if (CHIP_REV_IS_SLOW(bp))
   mcast_obj->max_cmd_len = BNX2X_MAX_EMUL_MULTI;
  else
   mcast_obj->max_cmd_len = BNX2X_MAX_MULTICAST;

  mcast_obj->wait_comp = bnx2x_mcast_wait;
  mcast_obj->set_one_rule = bnx2x_mcast_set_one_rule_e1;
  mcast_obj->validate = bnx2x_mcast_validate_e1;
  mcast_obj->revert = bnx2x_mcast_revert_e1;
  mcast_obj->get_registry_size =
   bnx2x_mcast_get_registry_size_exact;
  mcast_obj->set_registry_size =
   bnx2x_mcast_set_registry_size_exact;




  INIT_LIST_HEAD(&mcast_obj->registry.exact_match.macs);

 } else if (CHIP_IS_E1H(bp)) {
  mcast_obj->config_mcast = bnx2x_mcast_setup_e1h;
  mcast_obj->enqueue_cmd = ((void*)0);
  mcast_obj->hdl_restore = ((void*)0);
  mcast_obj->check_pending = bnx2x_mcast_check_pending;




  mcast_obj->max_cmd_len = -1;
  mcast_obj->wait_comp = bnx2x_mcast_wait;
  mcast_obj->set_one_rule = ((void*)0);
  mcast_obj->validate = bnx2x_mcast_validate_e1h;
  mcast_obj->revert = bnx2x_mcast_revert_e1h;
  mcast_obj->get_registry_size =
   bnx2x_mcast_get_registry_size_aprox;
  mcast_obj->set_registry_size =
   bnx2x_mcast_set_registry_size_aprox;
 } else {
  mcast_obj->config_mcast = bnx2x_mcast_setup_e2;
  mcast_obj->enqueue_cmd = bnx2x_mcast_enqueue_cmd;
  mcast_obj->hdl_restore =
   bnx2x_mcast_handle_restore_cmd_e2;
  mcast_obj->check_pending = bnx2x_mcast_check_pending;


  mcast_obj->max_cmd_len = 16;
  mcast_obj->wait_comp = bnx2x_mcast_wait;
  mcast_obj->set_one_rule = bnx2x_mcast_set_one_rule_e2;
  mcast_obj->validate = bnx2x_mcast_validate_e2;
  mcast_obj->revert = bnx2x_mcast_revert_e2;
  mcast_obj->get_registry_size =
   bnx2x_mcast_get_registry_size_aprox;
  mcast_obj->set_registry_size =
   bnx2x_mcast_set_registry_size_aprox;
 }
}
