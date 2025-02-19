
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_myDID; int fc_nodename; int fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; int nlp_rpi; int nlp_state; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_6__ {int ox_id; } ;
struct TYPE_7__ {TYPE_1__ rcvsli3; } ;
struct TYPE_9__ {int ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; TYPE_4__ iocb; int iotag; int retry; } ;
struct TYPE_8__ {int elsXmitACC; } ;
struct lpfc_hba {TYPE_3__ fc_stat; int fc_pref_ALPA; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_10__ {int DID; int nodeName; int portName; int hardAL_PA; } ;
typedef TYPE_4__ IOCB_t ;
typedef TYPE_5__ ADISC ;


 int ELS_CMD_ACC ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_ELS_RING ;
 int be32_to_cpu (int ) ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;

int
lpfc_els_rsp_adisc_acc(struct lpfc_vport *vport, struct lpfc_iocbq *oldiocb,
         struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 ADISC *ap;
 IOCB_t *icmd, *oldcmd;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;

 cmdsize = sizeof(uint32_t) + sizeof(ADISC);
 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_ACC);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 oldcmd = &oldiocb->iocb;
 icmd->ulpContext = oldcmd->ulpContext;
 icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0130 Xmit ADISC ACC response iotag x%x xri: "
    "x%x, did x%x, nlp_flag x%x, nlp_state x%x rpi x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;
 pcmd += sizeof(uint32_t);

 ap = (ADISC *) (pcmd);
 ap->hardAL_PA = phba->fc_pref_ALPA;
 memcpy(&ap->portName, &vport->fc_portname, sizeof(struct lpfc_name));
 memcpy(&ap->nodeName, &vport->fc_nodename, sizeof(struct lpfc_name));
 ap->DID = be32_to_cpu(vport->fc_myDID);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "Issue ACC ADISC: did:x%x flg:x%x",
  ndlp->nlp_DID, ndlp->nlp_flag, 0);

 phba->fc_stat.elsXmitACC++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);
 if (rc == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
