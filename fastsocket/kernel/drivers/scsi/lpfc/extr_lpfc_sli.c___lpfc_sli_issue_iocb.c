
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int (* __lpfc_sli_issue_iocb ) (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;} ;


 int stub1 (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;

int
__lpfc_sli_issue_iocb(struct lpfc_hba *phba, uint32_t ring_number,
  struct lpfc_iocbq *piocb, uint32_t flag)
{
 return phba->__lpfc_sli_issue_iocb(phba, ring_number, piocb, flag);
}
