
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_portname; int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; int iocb; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
typedef int IOCB_t ;


 int ELS_CMD_LOGO ;
 scalar_t__ IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_LOGO_SND ;
 int be32_to_cpu (int ) ;
 int lpfc_cmpl_els_npiv_logo ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_npiv_logo(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;

 cmdsize = 2 * sizeof(uint32_t) + sizeof(struct lpfc_name);
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, 0, ndlp, ndlp->nlp_DID,
         ELS_CMD_LOGO);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_LOGO;
 pcmd += sizeof(uint32_t);


 *((uint32_t *) (pcmd)) = be32_to_cpu(vport->fc_myDID);
 pcmd += sizeof(uint32_t);
 memcpy(pcmd, &vport->fc_portname, sizeof(struct lpfc_name));

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue LOGO npiv  did:x%x flg:x%x",
  ndlp->nlp_DID, ndlp->nlp_flag, 0);

 elsiocb->iocb_cmpl = lpfc_cmpl_els_npiv_logo;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_LOGO_SND;
 spin_unlock_irq(shost->host_lock);
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_LOGO_SND;
  spin_unlock_irq(shost->host_lock);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
