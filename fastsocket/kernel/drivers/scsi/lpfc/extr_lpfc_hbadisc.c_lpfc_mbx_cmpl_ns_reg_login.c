
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_state; scalar_t__ fc_ns_retry; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_rpi; } ;
struct lpfc_hba {scalar_t__ fc_topology; scalar_t__ sli_rev; int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_8__ {int * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int * context2; int * context1; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int FC_VPORT_FAILED ;
 int KERN_ERR ;
 int LOG_ELS ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 scalar_t__ LPFC_VPORT_READY ;
 int NLP_FABRIC ;
 int NLP_RPI_REGISTERED ;
 int NLP_STE_UNMAPPED_NODE ;
 int SCR_DID ;
 int SLI_CTNS_GID_FT ;
 int SLI_CTNS_RFF_ID ;
 int SLI_CTNS_RFT_ID ;
 int SLI_CTNS_RNN_ID ;
 int SLI_CTNS_RSNN_NN ;
 int SLI_CTNS_RSPN_ID ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_disc_list_loopmap (struct lpfc_vport*) ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 int lpfc_issue_els_scr (struct lpfc_vport*,int ,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_not_used (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 scalar_t__ lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int mempool_free (TYPE_4__*,int ) ;

void
lpfc_mbx_cmpl_ns_reg_login(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
 struct lpfc_vport *vport = pmb->vport;

 pmb->context1 = ((void*)0);
 pmb->context2 = ((void*)0);

 if (mb->mbxStatus) {
out:
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "0260 Register NameServer error: 0x%x\n",
     mb->mbxStatus);



  lpfc_nlp_put(ndlp);
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
  mempool_free(pmb, phba->mbox_mem_pool);


  lpfc_nlp_not_used(ndlp);

  if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {




   lpfc_disc_list_loopmap(vport);


   lpfc_disc_start(vport);
   return;
  }
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
  return;
 }

 if (phba->sli_rev < LPFC_SLI_REV4)
  ndlp->nlp_rpi = mb->un.varWords[0];
 ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 ndlp->nlp_type |= NLP_FABRIC;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);

 if (vport->port_state < LPFC_VPORT_READY) {

  lpfc_ns_cmd(vport, SLI_CTNS_RFF_ID, 0, 0);
  lpfc_ns_cmd(vport, SLI_CTNS_RNN_ID, 0, 0);
  lpfc_ns_cmd(vport, SLI_CTNS_RSNN_NN, 0, 0);
  lpfc_ns_cmd(vport, SLI_CTNS_RSPN_ID, 0, 0);
  lpfc_ns_cmd(vport, SLI_CTNS_RFT_ID, 0, 0);


  lpfc_issue_els_scr(vport, SCR_DID, 0);
 }

 vport->fc_ns_retry = 0;

 if (lpfc_ns_cmd(vport, SLI_CTNS_GID_FT, 0, 0)) {

  goto out;
 }




 lpfc_nlp_put(ndlp);
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);

 return;
}
