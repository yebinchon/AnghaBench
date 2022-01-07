
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ ct_flags; } ;
struct lpfc_iocbq {struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;


 int lpfc_cmpl_ct (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;

__attribute__((used)) static void
lpfc_cmpl_ct_cmd_da_id(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
 struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;


 vport->ct_flags = 0;
 lpfc_cmpl_ct(phba, cmdiocb, rspiocb);
 return;
}
