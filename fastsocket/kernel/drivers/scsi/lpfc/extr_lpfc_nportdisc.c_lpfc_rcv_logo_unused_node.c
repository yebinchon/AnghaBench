
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; int nlp_flag; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int ELS_CMD_ACC ;
 int NLP_LOGO_ACC ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_logo_unused_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;

 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_LOGO_ACC;
 spin_unlock_irq(shost->host_lock);
 lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, ((void*)0));

 return ndlp->nlp_state;
}
