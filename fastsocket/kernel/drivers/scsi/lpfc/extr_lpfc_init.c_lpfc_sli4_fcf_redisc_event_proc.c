
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flag; } ;
struct TYPE_4__ {int fcf_flag; TYPE_1__ failover_rec; } ;
struct lpfc_hba {int hbalock; TYPE_2__ fcf; } ;


 int FCF_REDISC_EVT ;
 int FCF_REDISC_FOV ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_FIP ;
 int LPFC_FCOE_FCF_GET_FIRST ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_sli4_fcf_scan_read_fcf_rec (struct lpfc_hba*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void lpfc_sli4_fcf_redisc_event_proc(struct lpfc_hba *phba)
{
 int rc;

 spin_lock_irq(&phba->hbalock);

 phba->fcf.fcf_flag &= ~FCF_REDISC_EVT;

 phba->fcf.failover_rec.flag = 0;

 phba->fcf.fcf_flag |= FCF_REDISC_FOV;
 spin_unlock_irq(&phba->hbalock);


 lpfc_printf_log(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
   "2777 Start post-quiescent FCF table scan\n");
 rc = lpfc_sli4_fcf_scan_read_fcf_rec(phba, LPFC_FCOE_FCF_GET_FIRST);
 if (rc)
  lpfc_printf_log(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
    "2747 Issue FCF scan read FCF mailbox "
    "command failed 0x%x\n", rc);
}
