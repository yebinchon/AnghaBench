
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_node_rrq {size_t xritag; int rxid; struct lpfc_nodelist* ndlp; } ;
struct TYPE_4__ {struct lpfc_node_rrq* rrq; } ;
struct lpfc_iocbq {int iocb_cmpl; TYPE_2__ context_un; scalar_t__ context2; int iocb; } ;
struct TYPE_3__ {int * xri_ids; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct RRQ {void* rrq_exchg; void* rrq; } ;
typedef int IOCB_t ;


 int ELS_CMD_RRQ ;
 int IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int bf_set (int ,struct RRQ*,int ) ;
 void* cpu_to_be32 (void*) ;
 int lpfc_cmpl_els_rrq ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,size_t,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int rrq_did ;
 int rrq_oxid ;
 int rrq_rxid ;

__attribute__((used)) static int
lpfc_issue_els_rrq(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   uint32_t did, struct lpfc_node_rrq *rrq)
{
 struct lpfc_hba *phba = vport->phba;
 struct RRQ *els_rrq;
 IOCB_t *icmd;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int ret;


 if (ndlp != rrq->ndlp)
  ndlp = rrq->ndlp;
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  return 1;


 cmdsize = (sizeof(uint32_t) + sizeof(struct RRQ));
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, 0, ndlp, did,
         ELS_CMD_RRQ);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 *((uint32_t *) (pcmd)) = ELS_CMD_RRQ;
 pcmd += sizeof(uint32_t);
 els_rrq = (struct RRQ *) pcmd;

 bf_set(rrq_oxid, els_rrq, phba->sli4_hba.xri_ids[rrq->xritag]);
 bf_set(rrq_rxid, els_rrq, rrq->rxid);
 bf_set(rrq_did, els_rrq, vport->fc_myDID);
 els_rrq->rrq = cpu_to_be32(els_rrq->rrq);
 els_rrq->rrq_exchg = cpu_to_be32(els_rrq->rrq_exchg);


 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue RRQ:     did:x%x",
  did, rrq->xritag, rrq->rxid);
 elsiocb->context_un.rrq = rrq;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rrq;
 ret = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);

 if (ret == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
