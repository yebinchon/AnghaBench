
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {scalar_t__ drvrTimeout; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_4__ {struct lpfc_vport* vport; scalar_t__ context2; scalar_t__ context1; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 scalar_t__ ELS_CMD_ADISC ;
 int ELS_CMD_PLOGI ;
 int kfree (struct lpfc_iocbq*) ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_els_rsp_adisc_acc (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ;
 int mempool_free (TYPE_1__*,int ) ;

__attribute__((used)) static void
lpfc_mbx_cmpl_resume_rpi(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct lpfc_vport *vport;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_nodelist *ndlp;
 uint32_t cmd;

 elsiocb = (struct lpfc_iocbq *)mboxq->context1;
 ndlp = (struct lpfc_nodelist *) mboxq->context2;
 vport = mboxq->vport;
 cmd = elsiocb->drvrTimeout;

 if (cmd == ELS_CMD_ADISC) {
  lpfc_els_rsp_adisc_acc(vport, elsiocb, ndlp);
 } else {
  lpfc_els_rsp_acc(vport, ELS_CMD_PLOGI, elsiocb,
   ndlp, ((void*)0));
 }
 kfree(elsiocb);
 mempool_free(mboxq, phba->mbox_mem_pool);
}
