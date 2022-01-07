
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_invalidate_connection_params_in {unsigned short cid; unsigned short save_cfg; int cleanup_type; int session_handle; int hdr; } ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct beiscsi_endpoint {int fw_handle; } ;
struct be_mcc_wrb {unsigned int tag0; } ;


 int CMD_ISCSI_CONNECTION_INVALIDATE ;
 int CMD_ISCSI_CONNECTION_ISSUE_TCP_RST ;
 int CMD_SUBSYSTEM_ISCSI_INI ;
 int OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct iscsi_invalidate_connection_params_in* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

unsigned int mgmt_invalidate_connection(struct beiscsi_hba *phba,
      struct beiscsi_endpoint *beiscsi_ep,
      unsigned short cid,
      unsigned short issue_reset,
      unsigned short savecfg_flag)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct iscsi_invalidate_connection_params_in *req;
 unsigned int tag = 0;

 spin_lock(&ctrl->mbox_lock);
 tag = alloc_mcc_tag(phba);
 if (!tag) {
  spin_unlock(&ctrl->mbox_lock);
  return tag;
 }
 wrb = wrb_from_mccq(phba);
 wrb->tag0 |= tag;
 req = embedded_payload(wrb);

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
      OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION,
      sizeof(*req));
 req->session_handle = beiscsi_ep->fw_handle;
 req->cid = cid;
 if (issue_reset)
  req->cleanup_type = CMD_ISCSI_CONNECTION_ISSUE_TCP_RST;
 else
  req->cleanup_type = CMD_ISCSI_CONNECTION_INVALIDATE;
 req->save_cfg = savecfg_flag;
 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);
 return tag;
}
