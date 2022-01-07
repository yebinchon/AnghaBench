
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_DID; int nlp_fcp_info; struct fc_rport* rport; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_rport {int dummy; } ;
struct TYPE_2__ {scalar_t__ prliType; scalar_t__ Retry; scalar_t__ targetFunc; scalar_t__ initiatorFunc; } ;
typedef TYPE_1__ PRLI ;


 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int LPFC_DISC_TRC_RPORT ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 scalar_t__ PRLI_FCP_TYPE ;
 int fc_remote_port_rolechg (struct fc_rport*,int ) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
lpfc_rcv_prli(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
       struct lpfc_iocbq *cmdiocb)
{
 struct lpfc_dmabuf *pcmd;
 uint32_t *lp;
 PRLI *npr;
 struct fc_rport *rport = ndlp->rport;
 u32 roles;

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;
 npr = (PRLI *) ((uint8_t *) lp + sizeof (uint32_t));

 ndlp->nlp_type &= ~(NLP_FCP_TARGET | NLP_FCP_INITIATOR);
 ndlp->nlp_fcp_info &= ~NLP_FCP_2_DEVICE;
 if (npr->prliType == PRLI_FCP_TYPE) {
  if (npr->initiatorFunc)
   ndlp->nlp_type |= NLP_FCP_INITIATOR;
  if (npr->targetFunc)
   ndlp->nlp_type |= NLP_FCP_TARGET;
  if (npr->Retry)
   ndlp->nlp_fcp_info |= NLP_FCP_2_DEVICE;
 }
 if (rport) {

  roles = FC_RPORT_ROLE_UNKNOWN;
  if (ndlp->nlp_type & NLP_FCP_INITIATOR)
   roles |= FC_RPORT_ROLE_FCP_INITIATOR;
  if (ndlp->nlp_type & NLP_FCP_TARGET)
   roles |= FC_RPORT_ROLE_FCP_TARGET;

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_RPORT,
   "rport rolechg:   role:x%x did:x%x flg:x%x",
   roles, ndlp->nlp_DID, ndlp->nlp_flag);

  fc_remote_port_rolechg(rport, roles);
 }
}
