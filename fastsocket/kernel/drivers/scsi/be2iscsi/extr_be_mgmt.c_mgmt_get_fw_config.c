
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iscsi_cid_count; int iscsi_cid_start; int iscsi_icd_count; int iscsi_icd_start; int phys_port; } ;
struct beiscsi_hba {TYPE_2__ fw_config; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_fw_cfg {TYPE_1__* ulp; int phys_port; int hdr; } ;
struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct TYPE_3__ {int sq_count; int sq_base; int icd_count; int icd_base; } ;


 int BE2_MAX_SESSIONS ;
 int BEISCSI_LOG_INIT ;
 int CMD_SUBSYSTEM_COMMON ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 struct be_fw_cfg* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int mgmt_get_fw_config(struct be_ctrl_info *ctrl,
    struct beiscsi_hba *phba)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_fw_cfg *req = embedded_payload(wrb);
 int status = 0;

 spin_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);

 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, sizeof(*req));
 status = be_mbox_notify(ctrl);
 if (!status) {
  struct be_fw_cfg *pfw_cfg;
  pfw_cfg = req;
  phba->fw_config.phys_port = pfw_cfg->phys_port;
  phba->fw_config.iscsi_icd_start =
     pfw_cfg->ulp[0].icd_base;
  phba->fw_config.iscsi_icd_count =
     pfw_cfg->ulp[0].icd_count;
  phba->fw_config.iscsi_cid_start =
     pfw_cfg->ulp[0].sq_base;
  phba->fw_config.iscsi_cid_count =
     pfw_cfg->ulp[0].sq_count;
  if (phba->fw_config.iscsi_cid_count > (BE2_MAX_SESSIONS / 2)) {
   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
        "BG_%d : FW reported MAX CXNS as %d\t"
        "Max Supported = %d.\n",
        phba->fw_config.iscsi_cid_count,
        BE2_MAX_SESSIONS);
   phba->fw_config.iscsi_cid_count = BE2_MAX_SESSIONS / 2;
  }
 } else {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_INIT,
       "BG_%d : Failed in mgmt_get_fw_config\n");
 }

 spin_unlock(&ctrl->mbox_lock);
 return status;
}
