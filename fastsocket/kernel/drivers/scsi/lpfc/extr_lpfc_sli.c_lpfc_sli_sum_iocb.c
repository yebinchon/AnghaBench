
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {int last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
typedef int lpfc_ctx_cmd ;


 scalar_t__ lpfc_sli_validate_fcp_iocb (struct lpfc_iocbq*,struct lpfc_vport*,int ,int ,int ) ;

int
lpfc_sli_sum_iocb(struct lpfc_vport *vport, uint16_t tgt_id, uint64_t lun_id,
    lpfc_ctx_cmd ctx_cmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *iocbq;
 int sum, i;

 for (i = 1, sum = 0; i <= phba->sli.last_iotag; i++) {
  iocbq = phba->sli.iocbq_lookup[i];

  if (lpfc_sli_validate_fcp_iocb (iocbq, vport, tgt_id, lun_id,
      ctx_cmd) == 0)
   sum++;
 }

 return sum;
}
