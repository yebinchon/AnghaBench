
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct serv_parm {int dummy; } ;
struct lpfc_vport {int fc_flag; int fc_sparam; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_rpi; int nlp_state; int nlp_DID; } ;
struct TYPE_10__ {int ox_id; } ;
struct TYPE_11__ {TYPE_2__ rcvsli3; } ;
struct TYPE_15__ {int ulpContext; TYPE_3__ unsli3; } ;
struct TYPE_9__ {int * mbox; } ;
struct lpfc_iocbq {int iocb_cmpl; TYPE_7__ iocb; int iotag; scalar_t__ context2; int retry; TYPE_1__ context_un; } ;
struct TYPE_14__ {int elsXmitACC; } ;
struct lpfc_hba {TYPE_6__ fc_stat; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {int * virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_12__ {int acceptRspCode; } ;
struct TYPE_13__ {TYPE_4__ prlo; } ;
struct TYPE_16__ {TYPE_5__ un; } ;
typedef int PRLO ;
typedef int LPFC_MBOXQ_t ;
typedef TYPE_7__ IOCB_t ;
typedef TYPE_8__ ELS_PKT ;





 int ELS_CMD_PRLO_ACC ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_ELS_RING ;
 int NLP_LOGO_ACC ;
 int PRLO_REQ_EXECUTED ;
 int lpfc_cmpl_els_logo_acc ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int const) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int,int ,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_els_rsp_acc(struct lpfc_vport *vport, uint32_t flag,
   struct lpfc_iocbq *oldiocb, struct lpfc_nodelist *ndlp,
   LPFC_MBOXQ_t *mbox)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd;
 IOCB_t *oldcmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;
 ELS_PKT *els_pkt_ptr;

 psli = &phba->sli;
 oldcmd = &oldiocb->iocb;

 switch (flag) {
 case 130:
  cmdsize = sizeof(uint32_t);
  elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry,
          ndlp, ndlp->nlp_DID, 130);
  if (!elsiocb) {
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag &= ~NLP_LOGO_ACC;
   spin_unlock_irq(shost->host_lock);
   return 1;
  }

  icmd = &elsiocb->iocb;
  icmd->ulpContext = oldcmd->ulpContext;
  icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;
  pcmd = (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
  *((uint32_t *) (pcmd)) = 130;
  pcmd += sizeof(uint32_t);

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
   "Issue ACC:       did:x%x flg:x%x",
   ndlp->nlp_DID, ndlp->nlp_flag, 0);
  break;
 case 129:
  cmdsize = (sizeof(struct serv_parm) + sizeof(uint32_t));
  elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry,
          ndlp, ndlp->nlp_DID, 130);
  if (!elsiocb)
   return 1;

  icmd = &elsiocb->iocb;
  icmd->ulpContext = oldcmd->ulpContext;
  icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;
  pcmd = (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

  if (mbox)
   elsiocb->context_un.mbox = mbox;

  *((uint32_t *) (pcmd)) = 130;
  pcmd += sizeof(uint32_t);
  memcpy(pcmd, &vport->fc_sparam, sizeof(struct serv_parm));

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
   "Issue ACC PLOGI: did:x%x flg:x%x",
   ndlp->nlp_DID, ndlp->nlp_flag, 0);
  break;
 case 128:
  cmdsize = sizeof(uint32_t) + sizeof(PRLO);
  elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry,
          ndlp, ndlp->nlp_DID, 128);
  if (!elsiocb)
   return 1;

  icmd = &elsiocb->iocb;
  icmd->ulpContext = oldcmd->ulpContext;
  icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;
  pcmd = (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

  memcpy(pcmd, ((struct lpfc_dmabuf *) oldiocb->context2)->virt,
         sizeof(uint32_t) + sizeof(PRLO));
  *((uint32_t *) (pcmd)) = ELS_CMD_PRLO_ACC;
  els_pkt_ptr = (ELS_PKT *) pcmd;
  els_pkt_ptr->un.prlo.acceptRspCode = PRLO_REQ_EXECUTED;

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
   "Issue ACC PRLO:  did:x%x flg:x%x",
   ndlp->nlp_DID, ndlp->nlp_flag, 0);
  break;
 default:
  return 1;
 }

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0128 Xmit ELS ACC response tag x%x, XRI: x%x, "
    "DID: x%x, nlp_flag: x%x nlp_state: x%x RPI: x%x "
    "fc_flag x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi, vport->fc_flag);
 if (ndlp->nlp_flag & NLP_LOGO_ACC) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_LOGO_ACC;
  spin_unlock_irq(shost->host_lock);
  elsiocb->iocb_cmpl = lpfc_cmpl_els_logo_acc;
 } else {
  elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
 }

 phba->fc_stat.elsXmitACC++;
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);
 if (rc == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
