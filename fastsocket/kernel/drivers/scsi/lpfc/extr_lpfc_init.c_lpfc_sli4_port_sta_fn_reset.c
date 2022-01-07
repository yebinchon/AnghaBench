
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int intr_mode; } ;


 int EIO ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_INTR_ERROR ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_sli4_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli4_enable_intr (struct lpfc_hba*,int ) ;
 int lpfc_sli4_pdev_status_reg_wait (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_sli4_port_sta_fn_reset(struct lpfc_hba *phba, int mbx_action)
{
 int rc;
 uint32_t intr_mode;





 rc = lpfc_sli4_pdev_status_reg_wait(phba);
 if (!rc) {

  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2887 Reset Needed: Attempting Port "
    "Recovery...\n");
  lpfc_offline_prep(phba, mbx_action);
  lpfc_offline(phba);

  lpfc_sli4_disable_intr(phba);
  lpfc_sli_brdrestart(phba);

  intr_mode = lpfc_sli4_enable_intr(phba, phba->intr_mode);
  if (intr_mode == LPFC_INTR_ERROR) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "3175 Failed to enable interrupt\n");
   return -EIO;
  } else {
   phba->intr_mode = intr_mode;
  }
  rc = lpfc_online(phba);
  if (rc == 0)
   lpfc_unblock_mgmt_io(phba);
 }
 return rc;
}
