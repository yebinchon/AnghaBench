
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_hba {scalar_t__ link_state; int mbox_mem_pool; int hbalock; int link_flag; } ;
struct fc_bsg_request {int dummy; } ;
struct fc_bsg_job {int request_len; int (* job_done ) (struct fc_bsg_job*) ;TYPE_8__* reply; TYPE_3__* request; } ;
struct diag_mode_set {scalar_t__ type; int timeout; } ;
struct TYPE_16__ {int link_flags; } ;
struct TYPE_17__ {TYPE_4__ varInitLnk; } ;
struct TYPE_18__ {scalar_t__ mbxStatus; void* mbxOwner; int mbxCommand; TYPE_5__ un; } ;
struct TYPE_19__ {TYPE_6__ mb; } ;
struct TYPE_21__ {TYPE_7__ u; } ;
struct TYPE_20__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_13__ {scalar_t__ vendor_cmd; } ;
struct TYPE_14__ {TYPE_1__ h_vendor; } ;
struct TYPE_15__ {TYPE_2__ rqst_data; } ;
typedef TYPE_9__ LPFC_MBOXQ_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int FLAGS_LOCAL_LB ;
 int FLAGS_TOPOLOGY_MODE_LOOP ;
 int GFP_KERNEL ;
 scalar_t__ INTERNAL_LOOP_BACK ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 scalar_t__ LPFC_HBA_READY ;
 scalar_t__ LPFC_LINK_DOWN ;
 int LPFC_MBOX_TMO ;
 int LS_LOOPBACK_MODE ;
 int MBX_DOWN_LINK ;
 int MBX_INIT_LINK ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 void* OWN_HOST ;
 int lpfc_bsg_diag_mode_enter (struct lpfc_hba*) ;
 int lpfc_bsg_diag_mode_exit (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_9__*,int ) ;
 TYPE_9__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_9__*,int ) ;
 int memset (void*,int ,int) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
lpfc_sli3_bsg_diag_loopback_mode(struct lpfc_hba *phba, struct fc_bsg_job *job)
{
 struct diag_mode_set *loopback_mode;
 uint32_t link_flags;
 uint32_t timeout;
 LPFC_MBOXQ_t *pmboxq = ((void*)0);
 int mbxstatus = MBX_SUCCESS;
 int i = 0;
 int rc = 0;


 job->reply->reply_payload_rcv_len = 0;

 if (job->request_len < sizeof(struct fc_bsg_request) +
     sizeof(struct diag_mode_set)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2738 Received DIAG MODE request size:%d "
    "below the minimum size:%d\n",
    job->request_len,
    (int)(sizeof(struct fc_bsg_request) +
    sizeof(struct diag_mode_set)));
  rc = -EINVAL;
  goto job_error;
 }

 rc = lpfc_bsg_diag_mode_enter(phba);
 if (rc)
  goto job_error;


 loopback_mode = (struct diag_mode_set *)
  job->request->rqst_data.h_vendor.vendor_cmd;
 link_flags = loopback_mode->type;
 timeout = loopback_mode->timeout * 100;

 pmboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmboxq) {
  rc = -ENOMEM;
  goto loopback_mode_exit;
 }
 memset((void *)pmboxq, 0, sizeof(LPFC_MBOXQ_t));
 pmboxq->u.mb.mbxCommand = MBX_DOWN_LINK;
 pmboxq->u.mb.mbxOwner = OWN_HOST;

 mbxstatus = lpfc_sli_issue_mbox_wait(phba, pmboxq, LPFC_MBOX_TMO);

 if ((mbxstatus == MBX_SUCCESS) && (pmboxq->u.mb.mbxStatus == 0)) {

  i = 0;
  while (phba->link_state != LPFC_LINK_DOWN) {
   if (i++ > timeout) {
    rc = -ETIMEDOUT;
    goto loopback_mode_exit;
   }
   msleep(10);
  }

  memset((void *)pmboxq, 0, sizeof(LPFC_MBOXQ_t));
  if (link_flags == INTERNAL_LOOP_BACK)
   pmboxq->u.mb.un.varInitLnk.link_flags = FLAGS_LOCAL_LB;
  else
   pmboxq->u.mb.un.varInitLnk.link_flags =
    FLAGS_TOPOLOGY_MODE_LOOP;

  pmboxq->u.mb.mbxCommand = MBX_INIT_LINK;
  pmboxq->u.mb.mbxOwner = OWN_HOST;

  mbxstatus = lpfc_sli_issue_mbox_wait(phba, pmboxq,
           LPFC_MBOX_TMO);

  if ((mbxstatus != MBX_SUCCESS) || (pmboxq->u.mb.mbxStatus))
   rc = -ENODEV;
  else {
   spin_lock_irq(&phba->hbalock);
   phba->link_flag |= LS_LOOPBACK_MODE;
   spin_unlock_irq(&phba->hbalock);

   msleep(100);

   i = 0;
   while (phba->link_state != LPFC_HBA_READY) {
    if (i++ > timeout) {
     rc = -ETIMEDOUT;
     break;
    }

    msleep(10);
   }
  }

 } else
  rc = -ENODEV;

loopback_mode_exit:
 lpfc_bsg_diag_mode_exit(phba);




 if (pmboxq && mbxstatus != MBX_TIMEOUT)
  mempool_free(pmboxq, phba->mbox_mem_pool);

job_error:

 job->reply->result = rc;

 if (rc == 0)
  job->job_done(job);
 return rc;
}
