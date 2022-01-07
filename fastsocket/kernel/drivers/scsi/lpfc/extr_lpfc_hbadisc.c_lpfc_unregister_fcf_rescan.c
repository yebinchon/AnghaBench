
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flag; } ;
struct TYPE_5__ {int fcf_flag; TYPE_1__ current_rec; } ;
struct lpfc_hba {scalar_t__ link_state; TYPE_3__* pport; int hbalock; TYPE_2__ fcf; } ;
struct TYPE_6__ {int load_flag; int port_state; } ;


 int FCF_INIT_DISC ;
 int FC_UNLOADING ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int LPFC_FCOE_FCF_GET_FIRST ;
 scalar_t__ LPFC_LINK_UP ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int) ;
 int lpfc_sli4_clear_fcf_rr_bmask (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_scan_read_fcf_rec (struct lpfc_hba*,int ) ;
 int lpfc_sli4_unregister_fcf (struct lpfc_hba*) ;
 int lpfc_unregister_fcf_prep (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_unregister_fcf_rescan(struct lpfc_hba *phba)
{
 int rc;


 rc = lpfc_unregister_fcf_prep(phba);
 if (rc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY,
    "2748 Failed to prepare for unregistering "
    "HBA's FCF record: rc=%d\n", rc);
  return;
 }


 rc = lpfc_sli4_unregister_fcf(phba);
 if (rc)
  return;

 phba->fcf.fcf_flag = 0;
 phba->fcf.current_rec.flag = 0;





 if ((phba->pport->load_flag & FC_UNLOADING) ||
     (phba->link_state < LPFC_LINK_UP))
  return;


 spin_lock_irq(&phba->hbalock);
 phba->fcf.fcf_flag |= FCF_INIT_DISC;
 spin_unlock_irq(&phba->hbalock);


 lpfc_sli4_clear_fcf_rr_bmask(phba);

 rc = lpfc_sli4_fcf_scan_read_fcf_rec(phba, LPFC_FCOE_FCF_GET_FIRST);

 if (rc) {
  spin_lock_irq(&phba->hbalock);
  phba->fcf.fcf_flag &= ~FCF_INIT_DISC;
  spin_unlock_irq(&phba->hbalock);
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
    "2553 lpfc_unregister_unused_fcf failed "
    "to read FCF record HBA state x%x\n",
    phba->pport->port_state);
 }
}
