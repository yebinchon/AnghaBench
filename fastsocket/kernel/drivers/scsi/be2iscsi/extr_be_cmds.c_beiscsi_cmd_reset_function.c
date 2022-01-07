
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_post_sgl_pages_req {int hdr; } ;
struct be_mcc_wrb {int dummy; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_FUNCTION_RESET ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mbox_notify_wait (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_post_sgl_pages_req* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_cmd_reset_function(struct beiscsi_hba *phba)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_post_sgl_pages_req *req = embedded_payload(wrb);
 int status;

 spin_lock(&ctrl->mbox_lock);

 req = embedded_payload(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_FUNCTION_RESET, sizeof(*req));
 status = be_mbox_notify_wait(phba);

 spin_unlock(&ctrl->mbox_lock);
 return status;
}
