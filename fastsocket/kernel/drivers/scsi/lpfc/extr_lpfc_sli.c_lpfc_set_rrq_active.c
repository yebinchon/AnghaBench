
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_5__ {int xri_bitmap; } ;
struct lpfc_nodelist {int nlp_DID; TYPE_3__* vport; TYPE_2__ active_rrqs; } ;
struct lpfc_node_rrq {int list; void* rxid; TYPE_3__* vport; int nlp_DID; struct lpfc_nodelist* ndlp; scalar_t__ rrq_stop_time; void* xritag; void* send_rrq; } ;
struct lpfc_hba {int cfg_enable_rrq; int fc_ratov; int hbalock; int hba_flag; int active_rrq_list; int rrq_pool; TYPE_1__* pport; } ;
struct TYPE_6__ {int load_flag; } ;
struct TYPE_4__ {int load_flag; } ;


 int EINVAL ;
 int FC_UNLOADING ;
 int GFP_KERNEL ;
 int HBA_RRQ_ACTIVE ;
 int KERN_INFO ;
 int LOG_SLI ;
 scalar_t__ NLP_CHK_FREE_REQ (struct lpfc_nodelist*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,void*,void*,int ,void*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 struct lpfc_node_rrq* mempool_alloc (int ,int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (void*,int ) ;

int
lpfc_set_rrq_active(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
      uint16_t xritag, uint16_t rxid, uint16_t send_rrq)
{
 unsigned long iflags;
 struct lpfc_node_rrq *rrq;
 int empty;

 if (!ndlp)
  return -EINVAL;

 if (!phba->cfg_enable_rrq)
  return -EINVAL;

 spin_lock_irqsave(&phba->hbalock, iflags);
 if (phba->pport->load_flag & FC_UNLOADING) {
  phba->hba_flag &= ~HBA_RRQ_ACTIVE;
  goto out;
 }




 if (NLP_CHK_FREE_REQ(ndlp))
  goto out;

 if (ndlp->vport && (ndlp->vport->load_flag & FC_UNLOADING))
  goto out;

 if (test_and_set_bit(xritag, ndlp->active_rrqs.xri_bitmap))
  goto out;

 spin_unlock_irqrestore(&phba->hbalock, iflags);
 rrq = mempool_alloc(phba->rrq_pool, GFP_KERNEL);
 if (!rrq) {
  lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
    "3155 Unable to allocate RRQ xri:0x%x rxid:0x%x"
    " DID:0x%x Send:%d\n",
    xritag, rxid, ndlp->nlp_DID, send_rrq);
  return -EINVAL;
 }
 if (phba->cfg_enable_rrq == 1)
  rrq->send_rrq = send_rrq;
 else
  rrq->send_rrq = 0;
 rrq->xritag = xritag;
 rrq->rrq_stop_time = jiffies +
    msecs_to_jiffies(1000 * (phba->fc_ratov + 1));
 rrq->ndlp = ndlp;
 rrq->nlp_DID = ndlp->nlp_DID;
 rrq->vport = ndlp->vport;
 rrq->rxid = rxid;
 spin_lock_irqsave(&phba->hbalock, iflags);
 empty = list_empty(&phba->active_rrq_list);
 list_add_tail(&rrq->list, &phba->active_rrq_list);
 phba->hba_flag |= HBA_RRQ_ACTIVE;
 if (empty)
  lpfc_worker_wake_up(phba);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return 0;
out:
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "2921 Can't set rrq active xri:0x%x rxid:0x%x"
   " DID:0x%x Send:%d\n",
   xritag, rxid, ndlp->nlp_DID, send_rrq);
 return -EINVAL;
}
