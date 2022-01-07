
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_prli_sent; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; int iocb; } ;
struct TYPE_7__ {int elsXmitPRLI; } ;
struct TYPE_5__ {int feaLevelHigh; } ;
struct TYPE_6__ {TYPE_1__ rev; } ;
struct lpfc_hba {TYPE_3__ fc_stat; TYPE_2__ vpd; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {int ConfmComplAllowed; int Retry; int TaskRetryIdReq; int estabImagePair; int readXferRdyDis; int initiatorFunc; int prliType; } ;
typedef TYPE_4__ PRLI ;
typedef int IOCB_t ;


 int ELS_CMD_PRLI ;
 scalar_t__ IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_PRLI_SND ;
 int PRLI_FCP_TYPE ;
 int lpfc_cmpl_els_prli ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memset (int *,int ,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_prli(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      uint8_t retry)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 PRLI *npr;
 IOCB_t *icmd;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;

 cmdsize = (sizeof(uint32_t) + sizeof(PRLI));
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_PRLI);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 memset(pcmd, 0, (sizeof(PRLI) + sizeof(uint32_t)));
 *((uint32_t *) (pcmd)) = ELS_CMD_PRLI;
 pcmd += sizeof(uint32_t);


 npr = (PRLI *) pcmd;




 if (phba->vpd.rev.feaLevelHigh >= 0x02) {
  npr->ConfmComplAllowed = 1;
  npr->Retry = 1;
  npr->TaskRetryIdReq = 1;
 }
 npr->estabImagePair = 1;
 npr->readXferRdyDis = 1;


 npr->prliType = PRLI_FCP_TYPE;
 npr->initiatorFunc = 1;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue PRLI:      did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitPRLI++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_prli;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_PRLI_SND;
 spin_unlock_irq(shost->host_lock);
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_PRLI_SND;
  spin_unlock_irq(shost->host_lock);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 vport->fc_prli_sent++;
 return 0;
}
