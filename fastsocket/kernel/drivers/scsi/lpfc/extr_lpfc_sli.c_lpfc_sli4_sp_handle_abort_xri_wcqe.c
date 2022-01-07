
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sli4_wcqe_xri_aborted {int dummy; } ;
struct lpfc_queue {int subtype; } ;
struct TYPE_2__ {int sp_els_xri_aborted_work_queue; int sp_fcp_xri_aborted_work_queue; } ;
struct lpfc_hba {int hbalock; int hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int list; int cqe; } ;


 int ELS_XRI_ABORT_EVENT ;
 int FCP_XRI_ABORT_EVENT ;
 int KERN_ERR ;
 int LOG_SLI ;


 int list_add_tail (int *,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 struct lpfc_cq_event* lpfc_sli4_cq_event_alloc (struct lpfc_hba*) ;
 int memcpy (int *,struct sli4_wcqe_xri_aborted*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_abort_xri_wcqe(struct lpfc_hba *phba,
       struct lpfc_queue *cq,
       struct sli4_wcqe_xri_aborted *wcqe)
{
 bool workposted = 0;
 struct lpfc_cq_event *cq_event;
 unsigned long iflags;


 cq_event = lpfc_sli4_cq_event_alloc(phba);
 if (!cq_event) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0602 Failed to allocate CQ_EVENT entry\n");
  return 0;
 }


 memcpy(&cq_event->cqe, wcqe, sizeof(struct sli4_wcqe_xri_aborted));
 switch (cq->subtype) {
 case 128:
  spin_lock_irqsave(&phba->hbalock, iflags);
  list_add_tail(&cq_event->list,
         &phba->sli4_hba.sp_fcp_xri_aborted_work_queue);

  phba->hba_flag |= FCP_XRI_ABORT_EVENT;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 case 129:
  spin_lock_irqsave(&phba->hbalock, iflags);
  list_add_tail(&cq_event->list,
         &phba->sli4_hba.sp_els_xri_aborted_work_queue);

  phba->hba_flag |= ELS_XRI_ABORT_EVENT;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0603 Invalid work queue CQE subtype (x%x)\n",
    cq->subtype);
  workposted = 0;
  break;
 }
 return workposted;
}
