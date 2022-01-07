
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_nodename; int fc_portname; int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; int iocb; } ;
struct TYPE_4__ {int elsXmitFARPR; } ;
struct lpfc_hba {TYPE_1__ fc_stat; int nlp_mem_pool; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_5__ {int Mflags; int OnodeName; int OportName; int RnodeName; int RportName; scalar_t__ Rflags; } ;
typedef int IOCB_t ;
typedef TYPE_2__ FARP ;


 int ELS_CMD_FARPR ;
 int ELS_CMD_RNID ;
 int FARP_MATCH_NODE ;
 int FARP_MATCH_PORT ;
 int GFP_KERNEL ;
 scalar_t__ IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_STE_UNUSED_NODE ;
 void* be32_to_cpu (int ) ;
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
 int memcpy (int *,int *,int) ;
 struct lpfc_nodelist* mempool_alloc (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
lpfc_issue_els_farpr(struct lpfc_vport *vport, uint32_t nportid, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 FARP *fp;
 uint8_t *pcmd;
 uint32_t *lp;
 uint16_t cmdsize;
 struct lpfc_nodelist *ondlp;
 struct lpfc_nodelist *ndlp;

 psli = &phba->sli;
 cmdsize = (sizeof(uint32_t) + sizeof(FARP));

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
         ndlp->nlp_DID, ELS_CMD_RNID);
 if (!elsiocb) {



  lpfc_nlp_put(ndlp);
  return 1;
 }

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

 *((uint32_t *) (pcmd)) = ELS_CMD_FARPR;
 pcmd += sizeof(uint32_t);


 fp = (FARP *) (pcmd);
 memset(fp, 0, sizeof(FARP));
 lp = (uint32_t *) pcmd;
 *lp++ = be32_to_cpu(nportid);
 *lp++ = be32_to_cpu(vport->fc_myDID);
 fp->Rflags = 0;
 fp->Mflags = (FARP_MATCH_PORT | FARP_MATCH_NODE);

 memcpy(&fp->RportName, &vport->fc_portname, sizeof(struct lpfc_name));
 memcpy(&fp->RnodeName, &vport->fc_nodename, sizeof(struct lpfc_name));
 ondlp = lpfc_findnode_did(vport, nportid);
 if (ondlp && NLP_CHK_NODE_ACT(ondlp)) {
  memcpy(&fp->OportName, &ondlp->nlp_portname,
         sizeof(struct lpfc_name));
  memcpy(&fp->OnodeName, &ondlp->nlp_nodename,
         sizeof(struct lpfc_name));
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue FARPR:     did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitFARPR++;
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
