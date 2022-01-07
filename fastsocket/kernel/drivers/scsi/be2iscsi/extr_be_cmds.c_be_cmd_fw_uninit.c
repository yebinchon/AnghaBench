
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int mbox_lock; int pdev; int mbox_mem; } ;


 int BEISCSI_LOG_INIT ;
 int KERN_ERR ;
 int be_dws_cpu_to_le (struct be_mcc_wrb*,int) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 struct beiscsi_hba* pci_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int be_cmd_fw_uninit(struct be_ctrl_info *ctrl)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct beiscsi_hba *phba = pci_get_drvdata(ctrl->pdev);
 int status;
 u8 *endian_check;

 spin_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 endian_check = (u8 *) wrb;
 *endian_check++ = 0xFF;
 *endian_check++ = 0xAA;
 *endian_check++ = 0xBB;
 *endian_check++ = 0xFF;
 *endian_check++ = 0xFF;
 *endian_check++ = 0xCC;
 *endian_check++ = 0xDD;
 *endian_check = 0xFF;

 be_dws_cpu_to_le(wrb, sizeof(*wrb));

 status = be_mbox_notify(ctrl);
 if (status)
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BC_%d : be_cmd_fw_uninit Failed\n");

 spin_unlock(&ctrl->mbox_lock);
 return status;
}
