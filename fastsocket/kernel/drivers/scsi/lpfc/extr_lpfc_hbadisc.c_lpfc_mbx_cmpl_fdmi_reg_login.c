
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {int cfg_fdmi_on; int fc_fdmitmo; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_rpi; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_8__ {int * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int * context2; int * context1; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_FABRIC ;
 int NLP_RPI_REGISTERED ;
 int NLP_STE_UNMAPPED_NODE ;
 int SLI_MGMT_DHBA ;
 scalar_t__ jiffies ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_fdmi_cmd (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int mempool_free (TYPE_4__*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

void
lpfc_mbx_cmpl_fdmi_reg_login(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
 struct lpfc_vport *vport = pmb->vport;

 pmb->context1 = ((void*)0);
 pmb->context2 = ((void*)0);

 if (phba->sli_rev < LPFC_SLI_REV4)
  ndlp->nlp_rpi = mb->un.varWords[0];
 ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 ndlp->nlp_type |= NLP_FABRIC;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);







 if (vport->cfg_fdmi_on == 1)
  lpfc_fdmi_cmd(vport, ndlp, SLI_MGMT_DHBA);
 else
  mod_timer(&vport->fc_fdmitmo,
     jiffies + msecs_to_jiffies(1000 * 60));




 lpfc_nlp_put(ndlp);
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);

 return;
}
