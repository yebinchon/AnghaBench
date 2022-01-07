
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct serv_parm {int portName; } ;
struct TYPE_5__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_6__ {int lsRjtError; TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {scalar_t__ num_disc_nodes; int fc_flag; int fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct TYPE_4__ {int elsLogiCol; } ;
struct lpfc_hba {TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_NDISC_ACTIVE ;
 int LSEXP_CMD_IN_PROGRESS ;
 int LSRJT_UNABLE_TPC ;
 int NLP_NPR_2B_DISC ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_end_rscn (struct lpfc_vport*) ;
 int lpfc_more_plogi (struct lpfc_vport*) ;
 scalar_t__ lpfc_rcv_plogi (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int memcmp (int *,int *,int) ;
 int memset (struct ls_rjt*,int ,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_plogi_plogi_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocb = arg;
 struct lpfc_dmabuf *pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 uint32_t *lp = (uint32_t *) pcmd->virt;
 struct serv_parm *sp = (struct serv_parm *) (lp + 1);
 struct ls_rjt stat;
 int port_cmp;

 memset(&stat, 0, sizeof (struct ls_rjt));




 phba->fc_stat.elsLogiCol++;
 port_cmp = memcmp(&vport->fc_portname, &sp->portName,
     sizeof(struct lpfc_name));

 if (port_cmp >= 0) {


  stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
  stat.un.b.lsRjtRsnCodeExp = LSEXP_CMD_IN_PROGRESS;
  lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp,
   ((void*)0));
 } else {
  if (lpfc_rcv_plogi(vport, ndlp, cmdiocb) &&
      (ndlp->nlp_flag & NLP_NPR_2B_DISC) &&
      (vport->num_disc_nodes)) {
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag &= ~NLP_NPR_2B_DISC;
   spin_unlock_irq(shost->host_lock);

   lpfc_more_plogi(vport);
   if (vport->num_disc_nodes == 0) {
    spin_lock_irq(shost->host_lock);
    vport->fc_flag &= ~FC_NDISC_ACTIVE;
    spin_unlock_irq(shost->host_lock);
    lpfc_can_disctmo(vport);
    lpfc_end_rscn(vport);
   }
  }
 }

 return ndlp->nlp_state;
}
