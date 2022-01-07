
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
struct lpfc_vport {int fc_portname; int fc_nodename; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_8__ {int ox_id; } ;
struct TYPE_9__ {TYPE_1__ rcvsli3; } ;
struct TYPE_14__ {int ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; TYPE_7__ iocb; int iotag; int retry; } ;
struct TYPE_12__ {int elsXmitACC; } ;
struct lpfc_hba {TYPE_5__ fc_stat; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_10__ {int attachedNodes; int physPort; int unitType; int portName; } ;
struct TYPE_11__ {TYPE_3__ topologyDisc; } ;
struct TYPE_13__ {int Format; int CommonLen; int SpecificLen; TYPE_4__ un; int nodeName; int portName; } ;
typedef int RNID_TOP_DISC ;
typedef TYPE_6__ RNID ;
typedef TYPE_7__ IOCB_t ;


 int ELS_CMD_ACC ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_ELS_RING ;
 int RNID_HBA ;

 int lpfc_cmpl_els_rsp ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
lpfc_els_rsp_rnid_acc(struct lpfc_vport *vport, uint8_t format,
        struct lpfc_iocbq *oldiocb, struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 RNID *rn;
 IOCB_t *icmd, *oldcmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;

 psli = &phba->sli;
 cmdsize = sizeof(uint32_t) + sizeof(uint32_t)
     + (2 * sizeof(struct lpfc_name));
 if (format)
  cmdsize += sizeof(RNID_TOP_DISC);

 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_ACC);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 oldcmd = &oldiocb->iocb;
 icmd->ulpContext = oldcmd->ulpContext;
 icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0132 Xmit RNID ACC response tag x%x xri x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext);
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;
 pcmd += sizeof(uint32_t);

 memset(pcmd, 0, sizeof(RNID));
 rn = (RNID *) (pcmd);
 rn->Format = format;
 rn->CommonLen = (2 * sizeof(struct lpfc_name));
 memcpy(&rn->portName, &vport->fc_portname, sizeof(struct lpfc_name));
 memcpy(&rn->nodeName, &vport->fc_nodename, sizeof(struct lpfc_name));
 switch (format) {
 case 0:
  rn->SpecificLen = 0;
  break;
 case 128:
  rn->SpecificLen = sizeof(RNID_TOP_DISC);
  memcpy(&rn->un.topologyDisc.portName,
         &vport->fc_portname, sizeof(struct lpfc_name));
  rn->un.topologyDisc.unitType = RNID_HBA;
  rn->un.topologyDisc.physPort = 0;
  rn->un.topologyDisc.attachedNodes = 0;
  break;
 default:
  rn->CommonLen = 0;
  rn->SpecificLen = 0;
  break;
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "Issue ACC RNID:  did:x%x flg:x%x",
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
