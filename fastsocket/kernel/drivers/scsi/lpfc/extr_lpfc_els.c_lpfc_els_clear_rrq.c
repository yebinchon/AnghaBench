
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct lpfc_vport {scalar_t__ fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_flag; } ;
struct lpfc_node_rrq {int dummy; } ;
struct TYPE_2__ {int ulpContext; } ;
struct lpfc_iocbq {TYPE_1__ iocb; int iotag; scalar_t__ context2; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct RRQ {scalar_t__ rrq_exchg; } ;


 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 scalar_t__ bf_get (int ,struct RRQ*) ;
 int lpfc_clr_rrq_active (struct lpfc_hba*,scalar_t__,struct lpfc_node_rrq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,scalar_t__) ;
 struct lpfc_node_rrq* lpfc_get_active_rrq (struct lpfc_vport*,scalar_t__,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int rrq_did ;
 int rrq_oxid ;
 int rrq_rxid ;

__attribute__((used)) static void
lpfc_els_clear_rrq(struct lpfc_vport *vport,
      struct lpfc_iocbq *iocb, struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 uint8_t *pcmd;
 struct RRQ *rrq;
 uint16_t rxid;
 uint16_t xri;
 struct lpfc_node_rrq *prrq;


 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) iocb->context2)->virt);
 pcmd += sizeof(uint32_t);
 rrq = (struct RRQ *)pcmd;
 rrq->rrq_exchg = be32_to_cpu(rrq->rrq_exchg);
 rxid = bf_get(rrq_rxid, rrq);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
   "2883 Clear RRQ for SID:x%x OXID:x%x RXID:x%x"
   " x%x x%x\n",
   be32_to_cpu(bf_get(rrq_did, rrq)),
   bf_get(rrq_oxid, rrq),
   rxid,
   iocb->iotag, iocb->iocb.ulpContext);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "Clear RRQ:  did:x%x flg:x%x exchg:x%.08x",
  ndlp->nlp_DID, ndlp->nlp_flag, rrq->rrq_exchg);
 if (vport->fc_myDID == be32_to_cpu(bf_get(rrq_did, rrq)))
  xri = bf_get(rrq_oxid, rrq);
 else
  xri = rxid;
 prrq = lpfc_get_active_rrq(vport, xri, ndlp->nlp_DID);
 if (prrq)
  lpfc_clr_rrq_active(phba, xri, prrq);
 return;
}
