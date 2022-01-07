
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct beiscsi_hba {int interface_handle; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_all_if_id_req {int * if_hndl_list; int hdr; } ;


 int BEISCSI_LOG_CONFIG ;
 int CMD_SUBSYSTEM_ISCSI ;
 int KERN_WARNING ;
 int OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 struct be_cmd_get_all_if_id_req* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

unsigned int mgmt_get_all_if_id(struct beiscsi_hba *phba)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_cmd_get_all_if_id_req *req = embedded_payload(wrb);
 struct be_cmd_get_all_if_id_req *pbe_allid = req;
 int status = 0;

 memset(wrb, 0, sizeof(*wrb));

 spin_lock(&ctrl->mbox_lock);

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
      OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID,
      sizeof(*req));
 status = be_mbox_notify(ctrl);
 if (!status)
  phba->interface_handle = pbe_allid->if_hndl_list[0];
 else {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed in mgmt_get_all_if_id\n");
 }
 spin_unlock(&ctrl->mbox_lock);

 return status;
}
