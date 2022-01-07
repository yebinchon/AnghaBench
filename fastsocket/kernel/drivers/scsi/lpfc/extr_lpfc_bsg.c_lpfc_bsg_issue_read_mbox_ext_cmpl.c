
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numBuf; int state; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_1__ mbox_ext_buf_ctx; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;} ;
struct TYPE_9__ {scalar_t__ mbxStatus; } ;
struct TYPE_10__ {TYPE_2__ mb; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_LIBDFC ;
 scalar_t__ MBXERR_ERROR ;
 struct fc_bsg_job* lpfc_bsg_issue_mbox_ext_handle_job (struct lpfc_hba*,TYPE_4__*) ;
 int lpfc_bsg_mbox_ext_session_reset (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,scalar_t__) ;
 int mempool_free (TYPE_4__*,int ) ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static void
lpfc_bsg_issue_read_mbox_ext_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 struct fc_bsg_job *job;

 job = lpfc_bsg_issue_mbox_ext_handle_job(phba, pmboxq);


 if (!job)
  pmboxq->u.mb.mbxStatus = MBXERR_ERROR;

 lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
   "2939 SLI_CONFIG ext-buffer rd maibox command "
   "complete, ctxState:x%x, mbxStatus:x%x\n",
   phba->mbox_ext_buf_ctx.state, pmboxq->u.mb.mbxStatus);

 if (pmboxq->u.mb.mbxStatus || phba->mbox_ext_buf_ctx.numBuf == 1)
  lpfc_bsg_mbox_ext_session_reset(phba);


 mempool_free(pmboxq, phba->mbox_mem_pool);


 if (job)
  job->job_done(job);

 return;
}
