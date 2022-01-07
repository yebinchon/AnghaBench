
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_vport {int fc_sparam; int vpi; struct lpfc_hba* phba; } ;
struct lpfc_rport_data {int * pnode; } ;
struct lpfc_nodelist {int nlp_flag; TYPE_1__* rport; int nlp_rpi; int nlp_DID; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_8__ {struct lpfc_nodelist* context2; struct lpfc_vport* vport; int mbox_cmpl; int mbox_flag; } ;
struct TYPE_7__ {struct lpfc_rport_data* dd_data; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int LPFC_MBX_IMED_UNREG ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int NLP_DEFER_RM ;
 int NLP_REG_LOGIN_SEND ;
 int NLP_RPI_REGISTERED ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_cleanup_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_mbx_cmpl_dflt_rpi ;
 int lpfc_reg_rpi (struct lpfc_hba*,int ,int ,int *,TYPE_2__*,int ) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_2__*,int ) ;
 TYPE_2__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_2__*,int ) ;

__attribute__((used)) static void
lpfc_nlp_remove(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_rport_data *rdata;
 LPFC_MBOXQ_t *mbox;
 int rc;

 lpfc_cancel_retry_delay_tmo(vport, ndlp);
 if ((ndlp->nlp_flag & NLP_DEFER_RM) &&
     !(ndlp->nlp_flag & NLP_REG_LOGIN_SEND) &&
     !(ndlp->nlp_flag & NLP_RPI_REGISTERED)) {



  if ((mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL))
   != ((void*)0)) {
   rc = lpfc_reg_rpi(phba, vport->vpi, ndlp->nlp_DID,
       (uint8_t *) &vport->fc_sparam, mbox, ndlp->nlp_rpi);
   if (rc) {
    mempool_free(mbox, phba->mbox_mem_pool);
   }
   else {
    mbox->mbox_flag |= LPFC_MBX_IMED_UNREG;
    mbox->mbox_cmpl = lpfc_mbx_cmpl_dflt_rpi;
    mbox->vport = vport;
    mbox->context2 = ndlp;
    rc =lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
    if (rc == MBX_NOT_FINISHED) {
     mempool_free(mbox, phba->mbox_mem_pool);
    }
   }
  }
 }
 lpfc_cleanup_node(vport, ndlp);






 if (ndlp->rport) {
  rdata = ndlp->rport->dd_data;
  rdata->pnode = ((void*)0);
  ndlp->rport = ((void*)0);
 }
}
