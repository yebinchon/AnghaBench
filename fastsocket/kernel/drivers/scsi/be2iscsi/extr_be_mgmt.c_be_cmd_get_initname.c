
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_cmd_hba_name {int hdr; } ;


 int CMD_SUBSYSTEM_ISCSI_INI ;
 int OPCODE_ISCSI_INI_CFG_GET_HBA_NAME ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_cmd_hba_name* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

unsigned int be_cmd_get_initname(struct beiscsi_hba *phba)
{
 unsigned int tag = 0;
 struct be_mcc_wrb *wrb;
 struct be_cmd_hba_name *req;
 struct be_ctrl_info *ctrl = &phba->ctrl;

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
   OPCODE_ISCSI_INI_CFG_GET_HBA_NAME,
   sizeof(*req));

 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);
 return tag;
}
