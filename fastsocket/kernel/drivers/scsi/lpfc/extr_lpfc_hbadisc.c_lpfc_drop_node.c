
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct TYPE_2__ {scalar_t__ sli_rev; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ NLP_STE_UNUSED_NODE ;
 int lpfc_cleanup_vports_rrqs (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__) ;

void
lpfc_drop_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{







 if (ndlp->nlp_state == NLP_STE_UNUSED_NODE)
  return;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNUSED_NODE);
 if (vport->phba->sli_rev == LPFC_SLI_REV4)
  lpfc_cleanup_vports_rrqs(vport, ndlp);
 lpfc_nlp_put(ndlp);
 return;
}
