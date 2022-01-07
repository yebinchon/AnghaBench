
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct lpfc_nodelist {TYPE_1__ kref; int nlp_usg_map; int vport; struct lpfc_hba* phba; int nlp_flag; int nlp_DID; } ;
struct lpfc_hba {int ndlp_lock; } ;


 int KERN_WARNING ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_NODE ;
 scalar_t__ NLP_CHK_FREE_ACK (struct lpfc_nodelist*) ;
 scalar_t__ NLP_CHK_FREE_REQ (struct lpfc_nodelist*) ;
 scalar_t__ NLP_CHK_IACT_REQ (struct lpfc_nodelist*) ;
 int NLP_SET_FREE_ACK (struct lpfc_nodelist*) ;
 int NLP_SET_IACT_REQ (struct lpfc_nodelist*) ;
 int atomic_read (int *) ;
 int kref_put (TYPE_1__*,int ) ;
 int lpfc_debugfs_disc_trc (int ,int ,char*,int ,int ,int) ;
 int lpfc_nlp_release ;
 int lpfc_printf_vlog (int ,int ,int ,char*,void*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
lpfc_nlp_put(struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba;
 unsigned long flags;

 if (!ndlp)
  return 1;

 lpfc_debugfs_disc_trc(ndlp->vport, LPFC_DISC_TRC_NODE,
 "node put:        did:x%x flg:x%x refcnt:x%x",
  ndlp->nlp_DID, ndlp->nlp_flag,
  atomic_read(&ndlp->kref.refcount));
 phba = ndlp->phba;
 spin_lock_irqsave(&phba->ndlp_lock, flags);




 if (NLP_CHK_FREE_ACK(ndlp)) {
  spin_unlock_irqrestore(&phba->ndlp_lock, flags);
  lpfc_printf_vlog(ndlp->vport, KERN_WARNING, LOG_NODE,
    "0274 lpfc_nlp_put: ndlp:x%p "
    "usgmap:x%x refcnt:%d\n",
    (void *)ndlp, ndlp->nlp_usg_map,
    atomic_read(&ndlp->kref.refcount));
  return 1;
 }




 if (NLP_CHK_IACT_REQ(ndlp)) {
  spin_unlock_irqrestore(&phba->ndlp_lock, flags);
  lpfc_printf_vlog(ndlp->vport, KERN_WARNING, LOG_NODE,
    "0275 lpfc_nlp_put: ndlp:x%p "
    "usgmap:x%x refcnt:%d\n",
    (void *)ndlp, ndlp->nlp_usg_map,
    atomic_read(&ndlp->kref.refcount));
  return 1;
 }





 if (atomic_read(&ndlp->kref.refcount) == 1) {

  NLP_SET_IACT_REQ(ndlp);

  if (NLP_CHK_FREE_REQ(ndlp))
   NLP_SET_FREE_ACK(ndlp);
 }
 spin_unlock_irqrestore(&phba->ndlp_lock, flags);






 return kref_put(&ndlp->kref, lpfc_nlp_release);
}
