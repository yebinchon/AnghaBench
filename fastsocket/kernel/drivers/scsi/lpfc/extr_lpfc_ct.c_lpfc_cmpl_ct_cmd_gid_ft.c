
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_vport {scalar_t__ fc_ns_retry; int load_flag; int fc_flag; scalar_t__ num_disc_nodes; scalar_t__ port_state; } ;
struct TYPE_12__ {scalar_t__ CmdRsp; } ;
struct TYPE_13__ {TYPE_4__ bits; } ;
struct lpfc_sli_ct_request {scalar_t__ ReasonCode; scalar_t__ Explanation; TYPE_5__ CommandResponse; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_14__ {struct lpfc_nodelist* ndlp; struct lpfc_iocbq* rsp_iocb; } ;
struct TYPE_9__ {scalar_t__ bdeSize; } ;
struct TYPE_10__ {TYPE_1__ bdl; } ;
struct TYPE_11__ {scalar_t__* ulpWord; TYPE_2__ genreq64; } ;
struct TYPE_15__ {scalar_t__ ulpStatus; TYPE_3__ un; } ;
struct lpfc_iocbq {TYPE_6__ context_un; TYPE_7__ iocb; scalar_t__ context3; scalar_t__ context2; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
typedef TYPE_7__ IOCB_t ;


 int FC_RSCN_MODE ;
 int FC_UNLOADING ;
 int FC_VPORT_FAILED ;
 int IOERR_NO_RESOURCES ;
 int IOERR_PARAM_MASK ;
 scalar_t__ IOSTAT_LOCAL_REJECT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_ELS ;
 scalar_t__ LPFC_DISC_AUTH ;
 int LPFC_DISC_TRC_CT ;
 scalar_t__ LPFC_MAX_NS_RETRY ;
 int SLI_CTNS_GID_FT ;
 scalar_t__ SLI_CT_NO_FC4_TYPES ;
 int SLI_CT_RESPONSE_FS_ACC ;
 int SLI_CT_RESPONSE_FS_RJT ;
 scalar_t__ SLI_CT_UNABLE_TO_PERFORM_REQ ;
 scalar_t__ be16_to_cpu (int ) ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 scalar_t__ lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_els_flush_rscn (struct lpfc_vport*) ;
 scalar_t__ lpfc_error_lost_link (TYPE_7__*) ;
 int lpfc_ns_cmd (struct lpfc_vport*,int ,scalar_t__,int ) ;
 int lpfc_ns_rsp (struct lpfc_vport*,struct lpfc_dmabuf*,scalar_t__) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_cmpl_ct_cmd_gid_ft(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 IOCB_t *irsp;
 struct lpfc_dmabuf *bmp;
 struct lpfc_dmabuf *outp;
 struct lpfc_sli_ct_request *CTrsp;
 struct lpfc_nodelist *ndlp;
 int rc;


 ndlp = cmdiocb->context_un.ndlp;


 cmdiocb->context_un.rsp_iocb = rspiocb;

 outp = (struct lpfc_dmabuf *) cmdiocb->context2;
 bmp = (struct lpfc_dmabuf *) cmdiocb->context3;
 irsp = &rspiocb->iocb;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
   "GID_FT cmpl:     status:x%x/x%x rtry:%d",
  irsp->ulpStatus, irsp->un.ulpWord[4], vport->fc_ns_retry);


 if (vport->load_flag & FC_UNLOADING) {
  if (vport->fc_flag & FC_RSCN_MODE)
   lpfc_els_flush_rscn(vport);
  goto out;
 }

 if (lpfc_els_chk_latt(vport)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0216 Link event during NS query\n");
  if (vport->fc_flag & FC_RSCN_MODE)
   lpfc_els_flush_rscn(vport);
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
  goto out;
 }
 if (lpfc_error_lost_link(irsp)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "0226 NS query failed due to link event\n");
  if (vport->fc_flag & FC_RSCN_MODE)
   lpfc_els_flush_rscn(vport);
  goto out;
 }
 if (irsp->ulpStatus) {

  if (vport->fc_ns_retry < LPFC_MAX_NS_RETRY) {
   if (irsp->ulpStatus != IOSTAT_LOCAL_REJECT ||
       (irsp->un.ulpWord[4] & IOERR_PARAM_MASK) !=
       IOERR_NO_RESOURCES)
    vport->fc_ns_retry++;


   rc = lpfc_ns_cmd(vport, SLI_CTNS_GID_FT,
      vport->fc_ns_retry, 0);
   if (rc == 0)
    goto out;
  }
  if (vport->fc_flag & FC_RSCN_MODE)
   lpfc_els_flush_rscn(vport);
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "0257 GID_FT Query error: 0x%x 0x%x\n",
     irsp->ulpStatus, vport->fc_ns_retry);
 } else {

  CTrsp = (struct lpfc_sli_ct_request *) outp->virt;
  if (CTrsp->CommandResponse.bits.CmdRsp ==
      be16_to_cpu(SLI_CT_RESPONSE_FS_ACC)) {
   lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
      "0208 NameServer Rsp Data: x%x\n",
      vport->fc_flag);
   lpfc_ns_rsp(vport, outp,
        (uint32_t) (irsp->un.genreq64.bdl.bdeSize));
  } else if (CTrsp->CommandResponse.bits.CmdRsp ==
      be16_to_cpu(SLI_CT_RESPONSE_FS_RJT)) {

   if ((CTrsp->ReasonCode == SLI_CT_UNABLE_TO_PERFORM_REQ)
       && (CTrsp->Explanation == SLI_CT_NO_FC4_TYPES)) {
    lpfc_printf_vlog(vport, KERN_INFO,
     LOG_DISCOVERY,
     "0269 No NameServer Entries "
     "Data: x%x x%x x%x x%x\n",
     CTrsp->CommandResponse.bits.CmdRsp,
     (uint32_t) CTrsp->ReasonCode,
     (uint32_t) CTrsp->Explanation,
     vport->fc_flag);

    lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
    "GID_FT no entry  cmd:x%x rsn:x%x exp:x%x",
    (uint32_t)CTrsp->CommandResponse.bits.CmdRsp,
    (uint32_t) CTrsp->ReasonCode,
    (uint32_t) CTrsp->Explanation);
   } else {
    lpfc_printf_vlog(vport, KERN_INFO,
     LOG_DISCOVERY,
     "0240 NameServer Rsp Error "
     "Data: x%x x%x x%x x%x\n",
     CTrsp->CommandResponse.bits.CmdRsp,
     (uint32_t) CTrsp->ReasonCode,
     (uint32_t) CTrsp->Explanation,
     vport->fc_flag);

    lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
    "GID_FT rsp err1  cmd:x%x rsn:x%x exp:x%x",
    (uint32_t)CTrsp->CommandResponse.bits.CmdRsp,
    (uint32_t) CTrsp->ReasonCode,
    (uint32_t) CTrsp->Explanation);
   }


  } else {

   lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
     "0241 NameServer Rsp Error "
     "Data: x%x x%x x%x x%x\n",
     CTrsp->CommandResponse.bits.CmdRsp,
     (uint32_t) CTrsp->ReasonCode,
     (uint32_t) CTrsp->Explanation,
     vport->fc_flag);

   lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
    "GID_FT rsp err2  cmd:x%x rsn:x%x exp:x%x",
    (uint32_t)CTrsp->CommandResponse.bits.CmdRsp,
    (uint32_t) CTrsp->ReasonCode,
    (uint32_t) CTrsp->Explanation);
  }
 }

 if (vport->num_disc_nodes == 0) {





  if (vport->port_state >= LPFC_DISC_AUTH) {
   if (vport->fc_flag & FC_RSCN_MODE) {
    lpfc_els_flush_rscn(vport);
    spin_lock_irq(shost->host_lock);
    vport->fc_flag |= FC_RSCN_MODE;
    spin_unlock_irq(shost->host_lock);
   }
   else
    lpfc_els_flush_rscn(vport);
  }

  lpfc_disc_start(vport);
 }
out:
 cmdiocb->context_un.ndlp = ndlp;
 lpfc_ct_free_iocb(phba, cmdiocb);
 return;
}
