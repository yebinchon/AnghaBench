
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct serv_parm {int dummy; } ;
struct lpfc_vport {int vpi; int port_state; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_rpi; } ;
struct lpfc_hba {int mbox_mem_pool; struct serv_parm fc_fabparam; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_7__ {scalar_t__ context1; int context2; struct lpfc_vport* vport; int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int ENXIO ;
 int FC_VPORT_FAILED ;
 int Fabric_DID ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_ELS ;
 int LPFC_FABRIC_CFG_LINK ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_config_link (struct lpfc_hba*,TYPE_1__*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_mbx_cmpl_fabric_reg_login ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int) ;
 int lpfc_reg_rpi (struct lpfc_hba*,int ,int ,int *,TYPE_1__*,int ) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

int
lpfc_issue_fabric_reglogin(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 struct lpfc_dmabuf *mp;
 struct lpfc_nodelist *ndlp;
 struct serv_parm *sp;
 int rc;
 int err = 0;

 sp = &phba->fc_fabparam;
 ndlp = lpfc_findnode_did(vport, Fabric_DID);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp)) {
  err = 1;
  goto fail;
 }

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox) {
  err = 2;
  goto fail;
 }

 vport->port_state = LPFC_FABRIC_CFG_LINK;
 lpfc_config_link(phba, mbox);
 mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
 mbox->vport = vport;

 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  err = 3;
  goto fail_free_mbox;
 }

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox) {
  err = 4;
  goto fail;
 }
 rc = lpfc_reg_rpi(phba, vport->vpi, Fabric_DID, (uint8_t *)sp, mbox,
     ndlp->nlp_rpi);
 if (rc) {
  err = 5;
  goto fail_free_mbox;
 }

 mbox->mbox_cmpl = lpfc_mbx_cmpl_fabric_reg_login;
 mbox->vport = vport;



 mbox->context2 = lpfc_nlp_get(ndlp);

 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  err = 6;
  goto fail_issue_reg_login;
 }

 return 0;

fail_issue_reg_login:



 lpfc_nlp_put(ndlp);
 mp = (struct lpfc_dmabuf *) mbox->context1;
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
fail_free_mbox:
 mempool_free(mbox, phba->mbox_mem_pool);

fail:
 lpfc_vport_set_state(vport, FC_VPORT_FAILED);
 lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
  "0249 Cannot issue Register Fabric login: Err %d\n", err);
 return -ENXIO;
}
