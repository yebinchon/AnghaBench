
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct lpfc_queue {size_t queue_id; int entry_repost; int CQ_max_cqe; } ;
struct TYPE_4__ {int sli_flag; } ;
struct TYPE_3__ {size_t* fcp_cq_map; struct lpfc_queue** fcp_cq; int * hba_eq; } ;
struct lpfc_hba {TYPE_2__ sli; TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;
struct lpfc_cqe {int dummy; } ;


 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_SLI ;
 int LPFC_QUEUE_NOARM ;
 int LPFC_QUEUE_REARM ;
 int LPFC_SLI_ACTIVE ;
 scalar_t__ bf_get_le32 (int ,struct lpfc_eqe*) ;
 int lpfc_eqe_major_code ;
 int lpfc_eqe_minor_code ;
 int lpfc_eqe_resource_id ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 struct lpfc_cqe* lpfc_sli4_cq_get (struct lpfc_queue*) ;
 int lpfc_sli4_cq_release (struct lpfc_queue*,int ) ;
 int lpfc_sli4_fp_handle_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_cqe*) ;
 int lpfc_sli4_sp_handle_eqe (struct lpfc_hba*,struct lpfc_eqe*,int ) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
lpfc_sli4_hba_handle_eqe(struct lpfc_hba *phba, struct lpfc_eqe *eqe,
   uint32_t qidx)
{
 struct lpfc_queue *cq;
 struct lpfc_cqe *cqe;
 bool workposted = 0;
 uint16_t cqid;
 int ecount = 0;

 if (unlikely(bf_get_le32(lpfc_eqe_major_code, eqe) != 0)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0366 Not a valid completion "
    "event: majorcode=x%x, minorcode=x%x\n",
    bf_get_le32(lpfc_eqe_major_code, eqe),
    bf_get_le32(lpfc_eqe_minor_code, eqe));
  return;
 }


 cqid = bf_get_le32(lpfc_eqe_resource_id, eqe);


 if (unlikely(cqid != phba->sli4_hba.fcp_cq_map[qidx])) {
  lpfc_sli4_sp_handle_eqe(phba, eqe,
   phba->sli4_hba.hba_eq[qidx]);
  return;
 }

 if (unlikely(!phba->sli4_hba.fcp_cq)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "3146 Fast-path completion queues "
    "does not exist\n");
  return;
 }
 cq = phba->sli4_hba.fcp_cq[qidx];
 if (unlikely(!cq)) {
  if (phba->sli.sli_flag & LPFC_SLI_ACTIVE)
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
     "0367 Fast-path completion queue "
     "(%d) does not exist\n", qidx);
  return;
 }

 if (unlikely(cqid != cq->queue_id)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0368 Miss-matched fast-path completion "
    "queue identifier: eqcqid=%d, fcpcqid=%d\n",
    cqid, cq->queue_id);
  return;
 }


 while ((cqe = lpfc_sli4_cq_get(cq))) {
  workposted |= lpfc_sli4_fp_handle_wcqe(phba, cq, cqe);
  if (!(++ecount % cq->entry_repost))
   lpfc_sli4_cq_release(cq, LPFC_QUEUE_NOARM);
 }


 if (ecount > cq->CQ_max_cqe)
  cq->CQ_max_cqe = ecount;


 if (unlikely(ecount == 0))
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0369 No entry from fast-path completion "
    "queue fcpcqid=%d\n", cq->queue_id);


 lpfc_sli4_cq_release(cq, LPFC_QUEUE_REARM);


 if (workposted)
  lpfc_worker_wake_up(phba);
}
