
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int refcount; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_rpi; TYPE_1__ kref; int nlp_usg_map; } ;
struct lpfc_hba {scalar_t__ sli_rev; int ndlp_lock; } ;
struct list_head {int dummy; } ;


 int KERN_WARNING ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_NODE ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ NLP_CHK_FREE_REQ (struct lpfc_nodelist*) ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_STE_UNUSED_NODE ;
 int atomic_read (int *) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_initialize_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,void*,int ,int ) ;
 int lpfc_sli4_alloc_rpi (struct lpfc_hba*) ;
 int memset (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct lpfc_nodelist *
lpfc_enable_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   int state)
{
 struct lpfc_hba *phba = vport->phba;
 uint32_t did;
 unsigned long flags;

 if (!ndlp)
  return ((void*)0);

 spin_lock_irqsave(&phba->ndlp_lock, flags);

 if (NLP_CHK_FREE_REQ(ndlp)) {
  spin_unlock_irqrestore(&phba->ndlp_lock, flags);
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_NODE,
    "0277 lpfc_enable_node: ndlp:x%p "
    "usgmap:x%x refcnt:%d\n",
    (void *)ndlp, ndlp->nlp_usg_map,
    atomic_read(&ndlp->kref.refcount));
  return ((void*)0);
 }

 if (NLP_CHK_NODE_ACT(ndlp)) {
  spin_unlock_irqrestore(&phba->ndlp_lock, flags);
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_NODE,
    "0278 lpfc_enable_node: ndlp:x%p "
    "usgmap:x%x refcnt:%d\n",
    (void *)ndlp, ndlp->nlp_usg_map,
    atomic_read(&ndlp->kref.refcount));
  return ((void*)0);
 }


 did = ndlp->nlp_DID;


 memset((((char *)ndlp) + sizeof (struct list_head)), 0,
  sizeof (struct lpfc_nodelist) - sizeof (struct list_head));
 lpfc_initialize_node(vport, ndlp, did);

 spin_unlock_irqrestore(&phba->ndlp_lock, flags);
 if (vport->phba->sli_rev == LPFC_SLI_REV4)
  ndlp->nlp_rpi = lpfc_sli4_alloc_rpi(vport->phba);


 if (state != NLP_STE_UNUSED_NODE)
  lpfc_nlp_set_state(vport, ndlp, state);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_NODE,
  "node enable:       did:x%x",
  ndlp->nlp_DID, 0, 0);
 return ndlp;
}
