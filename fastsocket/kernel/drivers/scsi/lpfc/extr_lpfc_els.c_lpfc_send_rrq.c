
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_nodelist {int dummy; } ;
struct lpfc_node_rrq {int nlp_DID; int vport; int xritag; } ;
struct lpfc_hba {int dummy; } ;


 struct lpfc_nodelist* lpfc_findnode_did (int ,int ) ;
 int lpfc_issue_els_rrq (int ,struct lpfc_nodelist*,int ,struct lpfc_node_rrq*) ;
 scalar_t__ lpfc_test_rrq_active (struct lpfc_hba*,struct lpfc_nodelist*,int ) ;

int
lpfc_send_rrq(struct lpfc_hba *phba, struct lpfc_node_rrq *rrq)
{
 struct lpfc_nodelist *ndlp = lpfc_findnode_did(rrq->vport,
       rrq->nlp_DID);
 if (lpfc_test_rrq_active(phba, ndlp, rrq->xritag))
  return lpfc_issue_els_rrq(rrq->vport, ndlp,
      rrq->nlp_DID, rrq);
 else
  return 1;
}
