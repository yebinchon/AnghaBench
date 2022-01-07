
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {int mp_payload_len; int fc_hdr; } ;
struct TYPE_6__ {TYPE_1__ mp_rsp; } ;
struct TYPE_7__ {TYPE_2__ comp_info; } ;
struct TYPE_8__ {TYPE_3__ union_ctx; } ;
struct fcoe_task_ctx_entry {TYPE_4__ rxwr_only; } ;
struct fc_frame_header {int dummy; } ;
struct bnx2fc_mp_req {int resp_len; struct fc_frame_header resp_fc_hdr; } ;
struct bnx2fc_cmd {int refcount; int * cb_arg; int (* cb_func ) (int *) ;struct bnx2fc_mp_req mp_req; scalar_t__ on_active_queue; int link; int timeout_work; int xid; int req_flags; int cmd_type; } ;


 int BNX2FC_ELS_DBG (char*,int ,...) ;
 int BNX2FC_FLAG_ELS_DONE ;
 int bnx2fc_cmd_release ;
 scalar_t__ cancel_delayed_work (int *) ;
 int cpu_to_be64 (int ) ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int stub1 (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void bnx2fc_process_els_compl(struct bnx2fc_cmd *els_req,
         struct fcoe_task_ctx_entry *task, u8 num_rq)
{
 struct bnx2fc_mp_req *mp_req;
 struct fc_frame_header *fc_hdr;
 u64 *hdr;
 u64 *temp_hdr;

 BNX2FC_ELS_DBG("Entered process_els_compl xid = 0x%x"
   "cmd_type = %d\n", els_req->xid, els_req->cmd_type);

 if (test_and_set_bit(BNX2FC_FLAG_ELS_DONE,
        &els_req->req_flags)) {
  BNX2FC_ELS_DBG("Timer context finished processing this "
      "els - 0x%x\n", els_req->xid);

  kref_put(&els_req->refcount, bnx2fc_cmd_release);
  return;
 }


 if (cancel_delayed_work(&els_req->timeout_work))
  kref_put(&els_req->refcount,
    bnx2fc_cmd_release);

 if (els_req->on_active_queue) {
  list_del_init(&els_req->link);
  els_req->on_active_queue = 0;
 }

 mp_req = &(els_req->mp_req);
 fc_hdr = &(mp_req->resp_fc_hdr);

 hdr = (u64 *)fc_hdr;
 temp_hdr = (u64 *)
  &task->rxwr_only.union_ctx.comp_info.mp_rsp.fc_hdr;
 hdr[0] = cpu_to_be64(temp_hdr[0]);
 hdr[1] = cpu_to_be64(temp_hdr[1]);
 hdr[2] = cpu_to_be64(temp_hdr[2]);

 mp_req->resp_len =
  task->rxwr_only.union_ctx.comp_info.mp_rsp.mp_payload_len;


 if ((els_req->cb_func) && (els_req->cb_arg)) {
  els_req->cb_func(els_req->cb_arg);
  els_req->cb_arg = ((void*)0);
 }

 kref_put(&els_req->refcount, bnx2fc_cmd_release);
}
