
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct lpfc_vport {int cfg_devloss_tmo; struct lpfc_hba* phba; } ;
struct TYPE_2__ {size_t fcp_ring; int * ring; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
typedef int lpfc_ctx_cmd ;


 int FAILED ;
 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_CTX_HOST ;
 int LPFC_CTX_LUN ;
 int LPFC_CTX_TGT ;
 int SUCCESS ;
 unsigned long jiffies ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,char*,int) ;
 int lpfc_sli_abort_iocb (struct lpfc_vport*,int *,int ,int ,int ) ;
 int lpfc_sli_sum_iocb (struct lpfc_vport*,int ,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
lpfc_reset_flush_io_context(struct lpfc_vport *vport, uint16_t tgt_id,
   uint64_t lun_id, lpfc_ctx_cmd context)
{
 struct lpfc_hba *phba = vport->phba;
 unsigned long later;
 int cnt;

 cnt = lpfc_sli_sum_iocb(vport, tgt_id, lun_id, context);
 if (cnt)
  lpfc_sli_abort_iocb(vport, &phba->sli.ring[phba->sli.fcp_ring],
        tgt_id, lun_id, context);
 later = msecs_to_jiffies(2 * vport->cfg_devloss_tmo * 1000) + jiffies;
 while (time_after(later, jiffies) && cnt) {
  schedule_timeout_uninterruptible(msecs_to_jiffies(20));
  cnt = lpfc_sli_sum_iocb(vport, tgt_id, lun_id, context);
 }
 if (cnt) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
   "0724 I/O flush failure for context %s : cnt x%x\n",
   ((context == LPFC_CTX_LUN) ? "LUN" :
    ((context == LPFC_CTX_TGT) ? "TGT" :
     ((context == LPFC_CTX_HOST) ? "HOST" : "Unknown"))),
   cnt);
  return FAILED;
 }
 return SUCCESS;
}
