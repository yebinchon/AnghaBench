
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct lpfc_vport {int port_state; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {size_t nlp_rpi; int nlp_DID; } ;
struct TYPE_10__ {int ndlp; } ;
struct TYPE_11__ {int Fctl; int Type; int Rctl; scalar_t__ Dfctl; } ;
struct TYPE_12__ {TYPE_3__ hcsw; } ;
struct TYPE_9__ {int bdeSize; int bdeFlags; int addrLow; int addrHigh; scalar_t__ ulpIoTag32; } ;
struct TYPE_13__ {TYPE_4__ w5; TYPE_1__ bdl; } ;
struct TYPE_14__ {TYPE_5__ genreq64; } ;
struct TYPE_16__ {int ulpTimeout; int ulpBdeCount; int ulpLe; size_t ulpContext; int ulpIoTag; scalar_t__ ulpCt_l; scalar_t__ ulpCt_h; int ulpClass; TYPE_6__ un; int ulpCommand; } ;
struct lpfc_iocbq {void (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;int drvrTimeout; int retry; struct lpfc_vport* vport; TYPE_2__ context_un; int * context2; int * context1; int * context3; TYPE_8__ iocb; } ;
struct TYPE_15__ {size_t* rpi_ids; } ;
struct lpfc_hba {int fc_ratov; scalar_t__ sli_rev; int sli3_options; TYPE_7__ sli4_hba; } ;
struct lpfc_dmabuf {int phys; } ;
typedef TYPE_8__ IOCB_t ;


 int BUFF_TYPE_BLP_64 ;
 int CLASS3 ;
 int CMD_GEN_REQUEST64_CR ;
 int FC_RCTL_DD_UNSOL_CTL ;
 int FC_TYPE_CT ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LA ;
 int LOG_ELS ;
 int LPFC_DRVR_TIMEOUT ;
 int LPFC_ELS_RING ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int SI ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

__attribute__((used)) static int
lpfc_gen_req(struct lpfc_vport *vport, struct lpfc_dmabuf *bmp,
      struct lpfc_dmabuf *inp, struct lpfc_dmabuf *outp,
      void (*cmpl) (struct lpfc_hba *, struct lpfc_iocbq *,
       struct lpfc_iocbq *),
      struct lpfc_nodelist *ndlp, uint32_t usr_flg, uint32_t num_entry,
      uint32_t tmo, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd;
 struct lpfc_iocbq *geniocb;
 int rc;


 geniocb = lpfc_sli_get_iocbq(phba);

 if (geniocb == ((void*)0))
  return 1;

 icmd = &geniocb->iocb;
 icmd->un.genreq64.bdl.ulpIoTag32 = 0;
 icmd->un.genreq64.bdl.addrHigh = putPaddrHigh(bmp->phys);
 icmd->un.genreq64.bdl.addrLow = putPaddrLow(bmp->phys);
 icmd->un.genreq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
 icmd->un.genreq64.bdl.bdeSize = (num_entry * sizeof (struct ulp_bde64));

 if (usr_flg)
  geniocb->context3 = ((void*)0);
 else
  geniocb->context3 = (uint8_t *) bmp;


 geniocb->context1 = (uint8_t *) inp;
 geniocb->context2 = (uint8_t *) outp;
 geniocb->context_un.ndlp = lpfc_nlp_get(ndlp);


 icmd->ulpCommand = CMD_GEN_REQUEST64_CR;


 icmd->un.genreq64.w5.hcsw.Fctl = (SI | LA);
 icmd->un.genreq64.w5.hcsw.Dfctl = 0;
 icmd->un.genreq64.w5.hcsw.Rctl = FC_RCTL_DD_UNSOL_CTL;
 icmd->un.genreq64.w5.hcsw.Type = FC_TYPE_CT;

 if (!tmo) {

  tmo = (3 * phba->fc_ratov);
 }
 icmd->ulpTimeout = tmo;
 icmd->ulpBdeCount = 1;
 icmd->ulpLe = 1;
 icmd->ulpClass = CLASS3;
 icmd->ulpContext = ndlp->nlp_rpi;
 if (phba->sli_rev == LPFC_SLI_REV4)
  icmd->ulpContext = phba->sli4_hba.rpi_ids[ndlp->nlp_rpi];

 if (phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) {

  icmd->ulpCt_h = 0;
  icmd->ulpCt_l = 0;
 }


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0119 Issue GEN REQ IOCB to NPORT x%x "
    "Data: x%x x%x\n",
    ndlp->nlp_DID, icmd->ulpIoTag,
    vport->port_state);
 geniocb->iocb_cmpl = cmpl;
 geniocb->drvrTimeout = icmd->ulpTimeout + LPFC_DRVR_TIMEOUT;
 geniocb->vport = vport;
 geniocb->retry = retry;
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, geniocb, 0);

 if (rc == IOCB_ERROR) {
  lpfc_sli_release_iocbq(phba, geniocb);
  return 1;
 }

 return 0;
}
