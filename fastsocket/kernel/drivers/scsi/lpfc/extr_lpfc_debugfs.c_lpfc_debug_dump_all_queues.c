
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_fcp_io_channel; } ;


 int lpfc_debug_dump_dat_rq (struct lpfc_hba*) ;
 int lpfc_debug_dump_els_cq (struct lpfc_hba*) ;
 int lpfc_debug_dump_els_wq (struct lpfc_hba*) ;
 int lpfc_debug_dump_fcp_cq (struct lpfc_hba*,int) ;
 int lpfc_debug_dump_fcp_wq (struct lpfc_hba*,int) ;
 int lpfc_debug_dump_hba_eq (struct lpfc_hba*,int) ;
 int lpfc_debug_dump_hdr_rq (struct lpfc_hba*) ;
 int lpfc_debug_dump_mbx_cq (struct lpfc_hba*) ;
 int lpfc_debug_dump_mbx_wq (struct lpfc_hba*) ;

void
lpfc_debug_dump_all_queues(struct lpfc_hba *phba)
{
 int fcp_wqidx;




 lpfc_debug_dump_mbx_wq(phba);
 lpfc_debug_dump_els_wq(phba);

 for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
  lpfc_debug_dump_fcp_wq(phba, fcp_wqidx);

 lpfc_debug_dump_hdr_rq(phba);
 lpfc_debug_dump_dat_rq(phba);



 lpfc_debug_dump_mbx_cq(phba);
 lpfc_debug_dump_els_cq(phba);

 for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
  lpfc_debug_dump_fcp_cq(phba, fcp_wqidx);




 for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
  lpfc_debug_dump_hba_eq(phba, fcp_wqidx);
}
