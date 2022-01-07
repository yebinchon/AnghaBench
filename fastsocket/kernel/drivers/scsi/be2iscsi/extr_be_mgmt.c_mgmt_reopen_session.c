
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_cmd_reopen_session_resp {int dummy; } ;
struct be_cmd_reopen_session_req {unsigned int reopen_type; unsigned int session_handle; int hdr; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int CMD_SUBSYSTEM_ISCSI_INI ;
 int KERN_INFO ;
 int OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 struct be_cmd_reopen_session_req* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

unsigned int mgmt_reopen_session(struct beiscsi_hba *phba,
      unsigned int reopen_type,
      unsigned int sess_handle)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct be_cmd_reopen_session_req *req;
 unsigned int tag = 0;

 beiscsi_log(phba, KERN_INFO,
      BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
      "BG_%d : In bescsi_get_boot_target\n");

 spin_lock(&ctrl->mbox_lock);
 tag = alloc_mcc_tag(phba);
 if (!tag) {
  spin_unlock(&ctrl->mbox_lock);
  return tag;
 }

 wrb = wrb_from_mccq(phba);
 req = embedded_payload(wrb);
 wrb->tag0 |= tag;
 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
      OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS,
      sizeof(struct be_cmd_reopen_session_resp));


 req->reopen_type = reopen_type;
 req->session_handle = sess_handle;

 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);
 return tag;
}
