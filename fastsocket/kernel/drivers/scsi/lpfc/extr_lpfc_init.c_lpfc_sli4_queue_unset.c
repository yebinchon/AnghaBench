
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hba_eq; int * fcp_cq; int els_cq; int mbx_cq; int * fcp_wq; int dat_rq; int hdr_rq; int els_wq; int mbx_wq; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;


 int lpfc_cq_destroy (struct lpfc_hba*,int ) ;
 int lpfc_eq_destroy (struct lpfc_hba*,int ) ;
 int lpfc_mq_destroy (struct lpfc_hba*,int ) ;
 int lpfc_rq_destroy (struct lpfc_hba*,int ,int ) ;
 int lpfc_wq_destroy (struct lpfc_hba*,int ) ;

void
lpfc_sli4_queue_unset(struct lpfc_hba *phba)
{
 int fcp_qidx;


 lpfc_mq_destroy(phba, phba->sli4_hba.mbx_wq);

 lpfc_wq_destroy(phba, phba->sli4_hba.els_wq);

 lpfc_rq_destroy(phba, phba->sli4_hba.hdr_rq, phba->sli4_hba.dat_rq);

 if (phba->sli4_hba.fcp_wq) {
  for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
       fcp_qidx++)
   lpfc_wq_destroy(phba, phba->sli4_hba.fcp_wq[fcp_qidx]);
 }

 lpfc_cq_destroy(phba, phba->sli4_hba.mbx_cq);

 lpfc_cq_destroy(phba, phba->sli4_hba.els_cq);

 if (phba->sli4_hba.fcp_cq) {
  for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
       fcp_qidx++)
   lpfc_cq_destroy(phba, phba->sli4_hba.fcp_cq[fcp_qidx]);
 }

 if (phba->sli4_hba.hba_eq) {
  for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
       fcp_qidx++)
   lpfc_eq_destroy(phba, phba->sli4_hba.hba_eq[fcp_qidx]);
 }
}
