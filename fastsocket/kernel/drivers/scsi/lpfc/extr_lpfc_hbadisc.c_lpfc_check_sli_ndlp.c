
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int uint8_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {scalar_t__ ringno; } ;
struct lpfc_sli {scalar_t__ extra_ring; scalar_t__ fcp_ring; scalar_t__ next_ring; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; scalar_t__ nlp_rpi; int nlp_DID; struct lpfc_vport* vport; } ;
struct TYPE_5__ {struct lpfc_nodelist* ndlp; } ;
struct TYPE_6__ {int remoteID; } ;
struct TYPE_7__ {TYPE_2__ elsreq64; } ;
struct TYPE_8__ {int ulpCommand; scalar_t__ volatile ulpContext; TYPE_3__ un; } ;
struct lpfc_iocbq {int * context1; TYPE_1__ context_un; struct lpfc_vport* vport; TYPE_4__ iocb; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;
typedef TYPE_4__ IOCB_t ;





 scalar_t__ LPFC_ELS_RING ;
 int NLP_DELAY_TMO ;
 int NLP_FCP_TARGET ;

int
lpfc_check_sli_ndlp(struct lpfc_hba *phba,
      struct lpfc_sli_ring *pring,
      struct lpfc_iocbq *iocb,
      struct lpfc_nodelist *ndlp)
{
 struct lpfc_sli *psli = &phba->sli;
 IOCB_t *icmd = &iocb->iocb;
 struct lpfc_vport *vport = ndlp->vport;

 if (iocb->vport != vport)
  return 0;

 if (pring->ringno == LPFC_ELS_RING) {
  switch (icmd->ulpCommand) {
  case 129:
   if (iocb->context_un.ndlp == ndlp)
    return 1;
  case 130:
   if (icmd->un.elsreq64.remoteID == ndlp->nlp_DID)
    return 1;
  case 128:
   if (iocb->context1 == (uint8_t *) ndlp)
    return 1;
  }
 } else if (pring->ringno == psli->extra_ring) {

 } else if (pring->ringno == psli->fcp_ring) {

  if ((ndlp->nlp_type & NLP_FCP_TARGET) &&
      (ndlp->nlp_flag & NLP_DELAY_TMO)) {
   return 0;
  }
  if (icmd->ulpContext == (volatile ushort)ndlp->nlp_rpi) {
   return 1;
  }
 } else if (pring->ringno == psli->next_ring) {

 }
 return 0;
}
