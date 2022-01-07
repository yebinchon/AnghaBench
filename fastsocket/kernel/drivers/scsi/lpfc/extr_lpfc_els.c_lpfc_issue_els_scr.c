
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_DID; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; int iocb; } ;
struct TYPE_3__ {int elsXmitSCR; } ;
struct lpfc_hba {TYPE_1__ fc_stat; int nlp_mem_pool; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_4__ {int Function; } ;
typedef TYPE_2__ SCR ;
typedef int IOCB_t ;


 int ELS_CMD_SCR ;
 int GFP_KERNEL ;
 scalar_t__ IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_STE_UNUSED_NODE ;
 int SCR_FUNC_FULL ;
 int lpfc_cmpl_els_cmd ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_enqueue_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_nlp_init (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 struct lpfc_nodelist* mempool_alloc (int ,int ) ;
 int memset (int *,int ,int) ;

int
lpfc_issue_els_scr(struct lpfc_vport *vport, uint32_t nportid, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 uint8_t *pcmd;
 uint16_t cmdsize;
 struct lpfc_nodelist *ndlp;

 psli = &phba->sli;
 cmdsize = (sizeof(uint32_t) + sizeof(SCR));

 ndlp = lpfc_findnode_did(vport, nportid);
 if (!ndlp) {
  ndlp = mempool_alloc(phba->nlp_mem_pool, GFP_KERNEL);
  if (!ndlp)
   return 1;
  lpfc_nlp_init(vport, ndlp, nportid);
  lpfc_enqueue_node(vport, ndlp);
 } else if (!NLP_CHK_NODE_ACT(ndlp)) {
  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_UNUSED_NODE);
  if (!ndlp)
   return 1;
 }

 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_SCR);

 if (!elsiocb) {



  lpfc_nlp_put(ndlp);
  return 1;
 }

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

 *((uint32_t *) (pcmd)) = ELS_CMD_SCR;
 pcmd += sizeof(uint32_t);


 memset(pcmd, 0, sizeof(SCR));
 ((SCR *) pcmd)->Function = SCR_FUNC_FULL;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue SCR:       did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitSCR++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_cmd;
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {




  lpfc_nlp_put(ndlp);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }



 lpfc_nlp_put(ndlp);
 return 0;
}
