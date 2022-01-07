
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mbx_cq; int * els_cq; int * dat_rq; int * hdr_rq; int * els_wq; int * mbx_wq; int ** fcp_cq_map; int ** fcp_wq; int ** fcp_cq; int ** hba_eq; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; int * pci_bar4_memmap_p; int * pci_bar2_memmap_p; int * pci_bar0_memmap_p; } ;


 int iounmap (int *) ;
 int kfree (int **) ;
 int lpfc_sli4_queue_free (int *) ;

void
lpfc_sli4_queue_destroy(struct lpfc_hba *phba)
{
 int idx;

 if (phba->sli4_hba.hba_eq != ((void*)0)) {

  for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++) {
   if (phba->sli4_hba.hba_eq[idx] != ((void*)0)) {
    lpfc_sli4_queue_free(
     phba->sli4_hba.hba_eq[idx]);
    phba->sli4_hba.hba_eq[idx] = ((void*)0);
   }
  }
  kfree(phba->sli4_hba.hba_eq);
  phba->sli4_hba.hba_eq = ((void*)0);
 }

 if (phba->sli4_hba.fcp_cq != ((void*)0)) {

  for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++) {
   if (phba->sli4_hba.fcp_cq[idx] != ((void*)0)) {
    lpfc_sli4_queue_free(
     phba->sli4_hba.fcp_cq[idx]);
    phba->sli4_hba.fcp_cq[idx] = ((void*)0);
   }
  }
  kfree(phba->sli4_hba.fcp_cq);
  phba->sli4_hba.fcp_cq = ((void*)0);
 }

 if (phba->sli4_hba.fcp_wq != ((void*)0)) {

  for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++) {
   if (phba->sli4_hba.fcp_wq[idx] != ((void*)0)) {
    lpfc_sli4_queue_free(
     phba->sli4_hba.fcp_wq[idx]);
    phba->sli4_hba.fcp_wq[idx] = ((void*)0);
   }
  }
  kfree(phba->sli4_hba.fcp_wq);
  phba->sli4_hba.fcp_wq = ((void*)0);
 }

 if (phba->pci_bar0_memmap_p) {
  iounmap(phba->pci_bar0_memmap_p);
  phba->pci_bar0_memmap_p = ((void*)0);
 }
 if (phba->pci_bar2_memmap_p) {
  iounmap(phba->pci_bar2_memmap_p);
  phba->pci_bar2_memmap_p = ((void*)0);
 }
 if (phba->pci_bar4_memmap_p) {
  iounmap(phba->pci_bar4_memmap_p);
  phba->pci_bar4_memmap_p = ((void*)0);
 }


 if (phba->sli4_hba.fcp_cq_map != ((void*)0)) {
  kfree(phba->sli4_hba.fcp_cq_map);
  phba->sli4_hba.fcp_cq_map = ((void*)0);
 }


 if (phba->sli4_hba.mbx_wq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.mbx_wq);
  phba->sli4_hba.mbx_wq = ((void*)0);
 }


 if (phba->sli4_hba.els_wq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.els_wq);
  phba->sli4_hba.els_wq = ((void*)0);
 }


 if (phba->sli4_hba.hdr_rq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.hdr_rq);
  phba->sli4_hba.hdr_rq = ((void*)0);
 }
 if (phba->sli4_hba.dat_rq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.dat_rq);
  phba->sli4_hba.dat_rq = ((void*)0);
 }


 if (phba->sli4_hba.els_cq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.els_cq);
  phba->sli4_hba.els_cq = ((void*)0);
 }


 if (phba->sli4_hba.mbx_cq != ((void*)0)) {
  lpfc_sli4_queue_free(phba->sli4_hba.mbx_cq);
  phba->sli4_hba.mbx_cq = ((void*)0);
 }

 return;
}
