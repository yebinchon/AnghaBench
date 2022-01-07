
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_7__ {int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ link_state; TYPE_5__* pport; int hbalock; int link_flag; TYPE_1__ sli4_hba; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_6__* reply; TYPE_4__* request; struct Scsi_Host* shost; } ;
struct diag_mode_set {int timeout; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_12__ {int result; } ;
struct TYPE_11__ {scalar_t__ fc_myDID; } ;
struct TYPE_8__ {scalar_t__ vendor_cmd; } ;
struct TYPE_9__ {TYPE_2__ h_vendor; } ;
struct TYPE_10__ {TYPE_3__ rqst_data; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 scalar_t__ LPFC_LINK_DOWN ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LS_LOOPBACK_MODE ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_selective_reset (struct lpfc_hba*) ;
 int lpfc_sli4_bsg_set_link_diag_state (struct lpfc_hba*,int ) ;
 int lpfc_sli_intf_if_type ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
lpfc_sli4_bsg_diag_mode_end(struct fc_bsg_job *job)
{
 struct Scsi_Host *shost;
 struct lpfc_vport *vport;
 struct lpfc_hba *phba;
 struct diag_mode_set *loopback_mode_end_cmd;
 uint32_t timeout;
 int rc, i;

 shost = job->shost;
 if (!shost)
  return -ENODEV;
 vport = (struct lpfc_vport *)job->shost->hostdata;
 if (!vport)
  return -ENODEV;
 phba = vport->phba;
 if (!phba)
  return -ENODEV;

 if (phba->sli_rev < LPFC_SLI_REV4)
  return -ENODEV;
 if (bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) !=
     LPFC_SLI_INTF_IF_TYPE_2)
  return -ENODEV;


 spin_lock_irq(&phba->hbalock);
 phba->link_flag &= ~LS_LOOPBACK_MODE;
 spin_unlock_irq(&phba->hbalock);
 loopback_mode_end_cmd = (struct diag_mode_set *)
   job->request->rqst_data.h_vendor.vendor_cmd;
 timeout = loopback_mode_end_cmd->timeout * 100;

 rc = lpfc_sli4_bsg_set_link_diag_state(phba, 0);
 if (rc) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "3139 Failed to bring link to diagnostic "
    "state, rc:x%x\n", rc);
  goto loopback_mode_end_exit;
 }


 i = 0;
 while (phba->link_state != LPFC_LINK_DOWN) {
  if (i++ > timeout) {
   rc = -ETIMEDOUT;
   lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
     "3140 Timeout waiting for link to "
     "diagnostic mode_end, timeout:%d ms\n",
     timeout * 10);

   break;
  }
  msleep(10);
 }


 rc = lpfc_selective_reset(phba);
 phba->pport->fc_myDID = 0;

loopback_mode_end_exit:

 job->reply->result = rc;

 if (rc == 0)
  job->job_done(job);
 return rc;
}
