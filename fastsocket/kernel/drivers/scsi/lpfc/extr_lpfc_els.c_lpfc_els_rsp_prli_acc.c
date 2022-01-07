
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_DID; int nlp_rpi; int nlp_state; } ;
struct TYPE_8__ {int ox_id; } ;
struct TYPE_9__ {TYPE_1__ rcvsli3; } ;
struct TYPE_14__ {int ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; TYPE_7__ iocb; int iotag; int retry; } ;
struct TYPE_11__ {int elsXmitACC; } ;
struct TYPE_10__ {int feaLevelHigh; } ;
struct TYPE_12__ {TYPE_3__ rev; } ;
struct lpfc_hba {TYPE_4__ fc_stat; TYPE_5__ vpd; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef TYPE_5__ lpfc_vpd_t ;
struct TYPE_13__ {int ConfmComplAllowed; int Retry; int TaskRetryIdReq; int estabImagePair; int readXferRdyDis; int initiatorFunc; int prliType; int acceptRspCode; } ;
typedef TYPE_6__ PRLI ;
typedef TYPE_7__ IOCB_t ;


 int ELS_CMD_ACC ;
 int ELS_CMD_PRLI ;
 int ELS_RSP_MASK ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_ELS_RING ;
 int NLP_FCP_TARGET ;
 int PRLI_FCP_TYPE ;
 int PRLI_REQ_EXECUTED ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memset (int *,int ,int) ;

int
lpfc_els_rsp_prli_acc(struct lpfc_vport *vport, struct lpfc_iocbq *oldiocb,
        struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 PRLI *npr;
 lpfc_vpd_t *vpd;
 IOCB_t *icmd;
 IOCB_t *oldcmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;

 psli = &phba->sli;

 cmdsize = sizeof(uint32_t) + sizeof(PRLI);
 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry, ndlp,
  ndlp->nlp_DID, (ELS_CMD_ACC | (ELS_CMD_PRLI & ~ELS_RSP_MASK)));
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 oldcmd = &oldiocb->iocb;
 icmd->ulpContext = oldcmd->ulpContext;
 icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0131 Xmit PRLI ACC response tag x%x xri x%x, "
    "did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

 *((uint32_t *) (pcmd)) = (ELS_CMD_ACC | (ELS_CMD_PRLI & ~ELS_RSP_MASK));
 pcmd += sizeof(uint32_t);


 memset(pcmd, 0, sizeof(PRLI));

 npr = (PRLI *) pcmd;
 vpd = &phba->vpd;




 if ((ndlp->nlp_type & NLP_FCP_TARGET) &&
     (vpd->rev.feaLevelHigh >= 0x02)) {
  npr->ConfmComplAllowed = 1;
  npr->Retry = 1;
  npr->TaskRetryIdReq = 1;
 }

 npr->acceptRspCode = PRLI_REQ_EXECUTED;
 npr->estabImagePair = 1;
 npr->readXferRdyDis = 1;
 npr->ConfmComplAllowed = 1;

 npr->prliType = PRLI_FCP_TYPE;
 npr->initiatorFunc = 1;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "Issue ACC PRLI:  did:x%x flg:x%x",
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
