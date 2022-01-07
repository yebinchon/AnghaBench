
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hba_eq; int * fcp_cq; int els_cq; int mbx_cq; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;


 int LPFC_QUEUE_REARM ;
 int lpfc_sli4_cq_release (int ,int ) ;
 int lpfc_sli4_eq_release (int ,int ) ;

__attribute__((used)) static void
lpfc_sli4_arm_cqeq_intr(struct lpfc_hba *phba)
{
 int fcp_eqidx;

 lpfc_sli4_cq_release(phba->sli4_hba.mbx_cq, LPFC_QUEUE_REARM);
 lpfc_sli4_cq_release(phba->sli4_hba.els_cq, LPFC_QUEUE_REARM);
 fcp_eqidx = 0;
 if (phba->sli4_hba.fcp_cq) {
  do {
   lpfc_sli4_cq_release(phba->sli4_hba.fcp_cq[fcp_eqidx],
          LPFC_QUEUE_REARM);
  } while (++fcp_eqidx < phba->cfg_fcp_io_channel);
 }
 if (phba->sli4_hba.hba_eq) {
  for (fcp_eqidx = 0; fcp_eqidx < phba->cfg_fcp_io_channel;
       fcp_eqidx++)
   lpfc_sli4_eq_release(phba->sli4_hba.hba_eq[fcp_eqidx],
          LPFC_QUEUE_REARM);
 }
}
