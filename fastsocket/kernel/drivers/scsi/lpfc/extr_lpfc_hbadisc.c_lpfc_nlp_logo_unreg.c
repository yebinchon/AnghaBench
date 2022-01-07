
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_3__ {scalar_t__ context1; struct lpfc_vport* vport; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

void
lpfc_nlp_logo_unreg(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct lpfc_nodelist *ndlp;

 ndlp = (struct lpfc_nodelist *)(pmb->context1);
 if (!ndlp)
  return;
 lpfc_issue_els_logo(vport, ndlp, 0);
}
