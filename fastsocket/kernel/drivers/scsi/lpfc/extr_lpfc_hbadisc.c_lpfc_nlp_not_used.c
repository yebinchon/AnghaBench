
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct lpfc_nodelist {TYPE_1__ kref; int nlp_flag; int nlp_DID; int vport; } ;


 int LPFC_DISC_TRC_NODE ;
 int atomic_read (int *) ;
 int lpfc_debugfs_disc_trc (int ,int ,char*,int ,int ,int) ;
 scalar_t__ lpfc_nlp_put (struct lpfc_nodelist*) ;

int
lpfc_nlp_not_used(struct lpfc_nodelist *ndlp)
{
 lpfc_debugfs_disc_trc(ndlp->vport, LPFC_DISC_TRC_NODE,
  "node not used:   did:x%x flg:x%x refcnt:x%x",
  ndlp->nlp_DID, ndlp->nlp_flag,
  atomic_read(&ndlp->kref.refcount));
 if (atomic_read(&ndlp->kref.refcount) == 1)
  if (lpfc_nlp_put(ndlp))
   return 1;
 return 0;
}
