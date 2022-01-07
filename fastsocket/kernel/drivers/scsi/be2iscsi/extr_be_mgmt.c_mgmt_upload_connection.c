
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_upload_params_in {unsigned short id; unsigned char upload_type; int hdr; } ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;


 int CMD_COMMON_TCP_UPLOAD ;
 int OPCODE_COMMON_TCP_UPLOAD ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct tcp_upload_params_in* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

unsigned int mgmt_upload_connection(struct beiscsi_hba *phba,
    unsigned short cid, unsigned int upload_flag)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct tcp_upload_params_in *req;
 unsigned int tag = 0;

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
 be_cmd_hdr_prepare(&req->hdr, CMD_COMMON_TCP_UPLOAD,
      OPCODE_COMMON_TCP_UPLOAD, sizeof(*req));
 req->id = (unsigned short)cid;
 req->upload_type = (unsigned char)upload_flag;
 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);
 return tag;
}
