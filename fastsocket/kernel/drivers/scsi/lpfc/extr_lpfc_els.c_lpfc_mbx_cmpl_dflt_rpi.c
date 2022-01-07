
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_nodelist {int vport; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_4__ {int * context2; int * context1; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_drop_node (int ,struct lpfc_nodelist*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_not_used (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_mbx_cmpl_dflt_rpi(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;

 pmb->context1 = ((void*)0);
 pmb->context2 = ((void*)0);

 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);
 if (ndlp) {
  if (NLP_CHK_NODE_ACT(ndlp)) {
   lpfc_nlp_put(ndlp);




   lpfc_nlp_not_used(ndlp);
  } else {
   lpfc_drop_node(ndlp->vport, ndlp);
  }
 }

 return;
}
