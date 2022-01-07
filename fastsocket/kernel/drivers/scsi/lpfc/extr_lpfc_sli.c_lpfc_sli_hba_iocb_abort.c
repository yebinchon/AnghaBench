
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int dummy; } ;
struct lpfc_sli {int num_rings; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;


 int lpfc_sli_iocb_ring_abort (struct lpfc_hba*,struct lpfc_sli_ring*) ;

void
lpfc_sli_hba_iocb_abort(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *pring;
 int i;

 for (i = 0; i < psli->num_rings; i++) {
  pring = &psli->ring[i];
  lpfc_sli_iocb_ring_abort(phba, pring);
 }
}
