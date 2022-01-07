
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {scalar_t__ sli_rev; } ;


 int ELS_CMD_ACC ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_els_clear_rrq (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;

__attribute__((used)) static void
lpfc_els_rcv_rrq(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
   struct lpfc_nodelist *ndlp)
{
 lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, ((void*)0));
 if (vport->phba->sli_rev == LPFC_SLI_REV4)
  lpfc_els_clear_rrq(vport, cmdiocb, ndlp);
}
