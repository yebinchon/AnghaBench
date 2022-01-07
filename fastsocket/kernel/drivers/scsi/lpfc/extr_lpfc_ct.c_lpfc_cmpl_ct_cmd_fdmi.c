
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_5__ {int CmdRsp; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct lpfc_sli_ct_request {TYPE_2__ CommandResponse; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_7__ {int * ulpWord; } ;
struct TYPE_8__ {TYPE_3__ un; scalar_t__ ulpStatus; } ;
struct lpfc_iocbq {TYPE_4__ iocb; struct lpfc_vport* vport; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {struct lpfc_sli_ct_request* virt; } ;
typedef TYPE_4__ IOCB_t ;


 int FDMI_DID ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_CT ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SLI_CT_RESPONSE_FS_RJT ;




 int be16_to_cpu (int) ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int ,scalar_t__) ;
 scalar_t__ lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_fdmi_cmd (struct lpfc_vport*,struct lpfc_nodelist*,int const) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;

__attribute__((used)) static void
lpfc_cmpl_ct_cmd_fdmi(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
        struct lpfc_iocbq * rspiocb)
{
 struct lpfc_dmabuf *inp = cmdiocb->context1;
 struct lpfc_dmabuf *outp = cmdiocb->context2;
 struct lpfc_sli_ct_request *CTrsp = outp->virt;
 struct lpfc_sli_ct_request *CTcmd = inp->virt;
 struct lpfc_nodelist *ndlp;
 uint16_t fdmi_cmd = CTcmd->CommandResponse.bits.CmdRsp;
 uint16_t fdmi_rsp = CTrsp->CommandResponse.bits.CmdRsp;
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp = &rspiocb->iocb;
 uint32_t latt;

 latt = lpfc_els_chk_latt(vport);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
  "FDMI cmpl:       status:x%x/x%x latt:%d",
  irsp->ulpStatus, irsp->un.ulpWord[4], latt);

 if (latt || irsp->ulpStatus) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0229 FDMI cmd %04x failed, latt = %d "
     "ulpStatus: x%x, rid x%x\n",
     be16_to_cpu(fdmi_cmd), latt, irsp->ulpStatus,
     irsp->un.ulpWord[4]);
  lpfc_ct_free_iocb(phba, cmdiocb);
  return;
 }

 ndlp = lpfc_findnode_did(vport, FDMI_DID);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  goto fail_out;

 if (fdmi_rsp == be16_to_cpu(SLI_CT_RESPONSE_FS_RJT)) {

  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0220 FDMI rsp failed Data: x%x\n",
     be16_to_cpu(fdmi_cmd));
 }

 switch (be16_to_cpu(fdmi_cmd)) {
 case 129:
  lpfc_fdmi_cmd(vport, ndlp, 128);
  break;

 case 128:
  break;

 case 131:
  lpfc_fdmi_cmd(vport, ndlp, 130);
  break;

 case 130:
  lpfc_fdmi_cmd(vport, ndlp, 129);
  break;
 }

fail_out:
 lpfc_ct_free_iocb(phba, cmdiocb);
 return;
}
