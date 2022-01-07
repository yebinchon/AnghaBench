
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cleanup_req {unsigned short chute; void* data_ring_id; void* hdr_ring_id; int hdr; } ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;


 int BEISCSI_LOG_INIT ;
 int CMD_SUBSYSTEM_ISCSI ;
 int HWI_GET_DEF_BUFQ_ID (struct beiscsi_hba*) ;
 int HWI_GET_DEF_HDRQ_ID (struct beiscsi_hba*) ;
 int KERN_WARNING ;
 int OPCODE_COMMON_ISCSI_CLEANUP ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify_wait (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 void* cpu_to_le16 (int ) ;
 struct iscsi_cleanup_req* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

int mgmt_epfw_cleanup(struct beiscsi_hba *phba, unsigned short chute)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb = wrb_from_mccq(phba);
 struct iscsi_cleanup_req *req = embedded_payload(wrb);
 int status = 0;

 spin_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
      OPCODE_COMMON_ISCSI_CLEANUP, sizeof(*req));

 req->chute = chute;
 req->hdr_ring_id = cpu_to_le16(HWI_GET_DEF_HDRQ_ID(phba));
 req->data_ring_id = cpu_to_le16(HWI_GET_DEF_BUFQ_ID(phba));

 status = be_mcc_notify_wait(phba);
 if (status)
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_INIT,
       "BG_%d : mgmt_epfw_cleanup , FAILED\n");
 spin_unlock(&ctrl->mbox_lock);
 return status;
}
