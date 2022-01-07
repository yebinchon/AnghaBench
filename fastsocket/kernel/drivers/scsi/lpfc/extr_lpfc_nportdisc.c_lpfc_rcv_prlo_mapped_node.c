
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_state; int nlp_sid; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {size_t fcp_ring; int * ring; } ;
struct lpfc_hba {TYPE_1__ sli; } ;


 int ELS_CMD_PRLO ;
 int LPFC_CTX_TGT ;
 int lpfc_rcv_logo (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_abort_iocb (struct lpfc_vport*,int *,int ,int ,int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prlo_mapped_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;


 lpfc_sli_abort_iocb(vport, &phba->sli.ring[phba->sli.fcp_ring],
       ndlp->nlp_sid, 0, LPFC_CTX_TGT);


 lpfc_rcv_logo(vport, ndlp, cmdiocb, ELS_CMD_PRLO);
 return ndlp->nlp_state;
}
