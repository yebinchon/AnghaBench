
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_14__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_15__ {int lsRjtError; TYPE_4__ b; } ;
struct ls_rjt {TYPE_5__ un; } ;
struct lpfc_vport {int cfg_devloss_tmo; int load_flag; int fc_flag; int fc_disctmo; } ;
struct lpfc_nodelist {scalar_t__ nlp_DID; int nlp_retry; int nlp_state; int nlp_prev_state; scalar_t__ nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct TYPE_11__ {scalar_t__ remoteID; } ;
struct TYPE_18__ {int* ulpWord; TYPE_1__ elsreq64; } ;
struct TYPE_19__ {int ulpStatus; TYPE_8__ un; } ;
struct lpfc_iocbq {int retry; int sli4_lxritag; scalar_t__ context2; scalar_t__ context1; TYPE_9__ iocb; struct lpfc_vport* vport; } ;
struct TYPE_17__ {int elsDelayRetry; int elsXmitRetry; int elsRetryExceeded; } ;
struct TYPE_16__ {int fcf_flag; } ;
struct lpfc_hba {scalar_t__ fc_topology; int sli3_options; TYPE_7__ fc_stat; TYPE_6__ fcf; int * alpa_map; TYPE_3__* pport; TYPE_2__* pcidev; int sli_rev; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_13__ {int fc_myDID; } ;
struct TYPE_12__ {int device; } ;
typedef TYPE_9__ IOCB_t ;
 int FCF_DISCOVERY ;
 int FC_RSCN_MODE ;
 int FC_UNLOADING ;
 int FC_VPORT_FABRIC_REJ_WWN ;
 int FC_VPORT_NO_FABRIC_RSCS ;
 scalar_t__ FDMI_DID ;





 int IOERR_PARAM_MASK ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_SLI3_NPIV_ENABLED ;
 int LPFC_SLI_REV4 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int LSEXP_CANT_GIVE_DATA ;
 int LSEXP_CMD_IN_PROGRESS ;
 int LSEXP_INVALID_NPORT_ID ;
 int LSEXP_INVALID_PNAME ;
 int LSEXP_OUT_OF_RESOURCE ;
 int LSEXP_PORT_LOGIN_REQ ;




 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_DELAY_TMO ;
 int NLP_STE_ADISC_ISSUE ;
 int NLP_STE_LOGO_ISSUE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PLOGI_ISSUE ;
 int NLP_STE_PRLI_ISSUE ;
 scalar_t__ NameServer_DID ;
 int PCI_DEVICE_ID_HORNET ;
 int RJT_UNAVAIL_TEMP ;
 int be32_to_cpu (int) ;
 scalar_t__ jiffies ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int,scalar_t__) ;
 int lpfc_error_lost_link (TYPE_9__*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,scalar_t__) ;
 int lpfc_issue_els_adisc (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_fdisc (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_flogi (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,scalar_t__,int) ;
 int lpfc_issue_els_prli (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_max_els_tries ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,...) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;
 int lpfc_set_rrq_active (struct lpfc_hba*,struct lpfc_nodelist*,int ,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static int
lpfc_els_retry(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
        struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 IOCB_t *irsp = &rspiocb->iocb;
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
 struct lpfc_dmabuf *pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 uint32_t *elscmd;
 struct ls_rjt stat;
 int retry = 0, maxretry = lpfc_max_els_tries, delay = 0;
 int logerr = 0;
 uint32_t cmd = 0;
 uint32_t did;






 if (pcmd && pcmd->virt) {
  elscmd = (uint32_t *) (pcmd->virt);
  cmd = *elscmd++;
 }

 if (ndlp && NLP_CHK_NODE_ACT(ndlp))
  did = ndlp->nlp_DID;
 else {

  did = irsp->un.elsreq64.remoteID;
  ndlp = lpfc_findnode_did(vport, did);
  if ((!ndlp || !NLP_CHK_NODE_ACT(ndlp))
      && (cmd != 149))
   return 1;
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Retry ELS:       wd7:x%x wd4:x%x did:x%x",
  *(((uint32_t *) irsp) + 7), irsp->un.ulpWord[4], ndlp->nlp_DID);

 switch (irsp->ulpStatus) {
 case 138:
  break;
 case 132:
  if (phba->sli_rev == LPFC_SLI_REV4) {




   lpfc_set_rrq_active(phba, ndlp,
      cmdiocb->sli4_lxritag, 0, 0);
  }
  break;
 case 136:
  switch ((irsp->un.ulpWord[4] & IOERR_PARAM_MASK)) {
  case 144:
   if (cmd == 151) {
    if (PCI_DEVICE_ID_HORNET ==
     phba->pcidev->device) {
     phba->fc_topology = LPFC_TOPOLOGY_LOOP;
     phba->pport->fc_myDID = 0;
     phba->alpa_map[0] = 0;
     phba->alpa_map[1] = 0;
    }
   }
   if (cmd == 149 && cmdiocb->retry == 0)
    delay = 1000;
   retry = 1;
   break;

  case 147:
   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
      "0124 Retry illegal cmd x%x "
      "retry:x%x delay:x%x\n",
      cmd, cmdiocb->retry, delay);
   retry = 1;

   maxretry = 8;
   if (cmdiocb->retry > 2)
    delay = 1000;
   break;

  case 143:
   logerr = 1;
   retry = 1;
   if (cmdiocb->retry > 100)
    delay = 100;
   maxretry = 250;
   break;

  case 146:
   delay = 100;
   retry = 1;
   break;

  case 142:
  case 145:
   if (cmd == 149 &&
       did == NameServer_DID) {


    maxretry = 0;
    delay = 100;
   }
   retry = 1;
   break;
  }
  break;

 case 133:
 case 139:
  if (irsp->un.ulpWord[4] & RJT_UNAVAIL_TEMP) {
   retry = 1;
   break;
  }
  break;

 case 134:
 case 140:
  logerr = 1;
  retry = 1;
  break;

 case 135:
  stat.un.lsRjtError = be32_to_cpu(irsp->un.ulpWord[4]);



  switch (stat.un.b.lsRjtRsnCode) {
  case 128:
   if (stat.un.b.lsRjtRsnCodeExp ==
       LSEXP_CMD_IN_PROGRESS) {
    if (cmd == 149) {
     delay = 1000;
     maxretry = 48;
    }
    retry = 1;
    break;
   }
   if (stat.un.b.lsRjtRsnCodeExp ==
       LSEXP_CANT_GIVE_DATA) {
    if (cmd == 149) {
     delay = 1000;
     maxretry = 48;
    }
    retry = 1;
    break;
   }
   if ((cmd == 149) ||
       (cmd == 148)) {
    delay = 1000;
    maxretry = lpfc_max_els_tries + 1;
    retry = 1;
    break;
   }
   if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
     (cmd == 152) &&
     (stat.un.b.lsRjtRsnCodeExp == LSEXP_OUT_OF_RESOURCE)){
    lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
       "0125 FDISC Failed (x%x). "
       "Fabric out of resources\n",
       stat.un.lsRjtError);
    lpfc_vport_set_state(vport,
           FC_VPORT_NO_FABRIC_RSCS);
   }
   break;

  case 131:
   if ((cmd == 149) ||
       (cmd == 148)) {
    delay = 1000;
    maxretry = 48;
   } else if (cmd == 152) {

    maxretry = 48;
    if (cmdiocb->retry >= 32)
     delay = 1000;
   }
   retry = 1;
   break;

  case 130:




   if (cmd == 152 &&
       stat.un.b.lsRjtRsnCodeExp == LSEXP_PORT_LOGIN_REQ) {
    maxretry = 3;
    delay = 1000;
    retry = 1;
    break;
   }
  case 129:
   if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
     (cmd == 152) &&
     ((stat.un.b.lsRjtRsnCodeExp == LSEXP_INVALID_PNAME) ||
     (stat.un.b.lsRjtRsnCodeExp == LSEXP_INVALID_NPORT_ID))
     ) {
    lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
       "0122 FDISC Failed (x%x). "
       "Fabric Detected Bad WWN\n",
       stat.un.lsRjtError);
    lpfc_vport_set_state(vport,
           FC_VPORT_FABRIC_REJ_WWN);
   }
   break;
  }
  break;

 case 137:
 case 141:
  break;

 default:
  break;
 }

 if (did == FDMI_DID)
  retry = 1;

 if ((cmd == 151) &&
     (phba->fc_topology != LPFC_TOPOLOGY_LOOP) &&
     !lpfc_error_lost_link(irsp)) {

  retry = 1;

  maxretry = 0;
  if (cmdiocb->retry >= 100)
   delay = 5000;
  else if (cmdiocb->retry >= 32)
   delay = 1000;
 } else if ((cmd == 152) && !lpfc_error_lost_link(irsp)) {

  retry = 1;
  maxretry = vport->cfg_devloss_tmo;
  delay = 1000;
 }

 cmdiocb->retry++;
 if (maxretry && (cmdiocb->retry >= maxretry)) {
  phba->fc_stat.elsRetryExceeded++;
  retry = 0;
 }

 if ((vport->load_flag & FC_UNLOADING) != 0)
  retry = 0;

 if (retry) {
  if ((cmd == 149) || (cmd == 152)) {

   if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
    lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
       "2849 Stop retry ELS command "
       "x%x to remote NPORT x%x, "
       "Data: x%x x%x\n", cmd, did,
       cmdiocb->retry, delay);
    return 0;
   }
  }


  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
     "0107 Retry ELS command x%x to remote "
     "NPORT x%x Data: x%x x%x\n",
     cmd, did, cmdiocb->retry, delay);

  if (((cmd == 149) || (cmd == 153)) &&
   ((irsp->ulpStatus != 136) ||
   ((irsp->un.ulpWord[4] & IOERR_PARAM_MASK) !=
   143))) {



   if (timer_pending(&vport->fc_disctmo) ||
       (vport->fc_flag & FC_RSCN_MODE))
    lpfc_set_disctmo(vport);
  }

  phba->fc_stat.elsXmitRetry++;
  if (ndlp && NLP_CHK_NODE_ACT(ndlp) && delay) {
   phba->fc_stat.elsDelayRetry++;
   ndlp->nlp_retry = cmdiocb->retry;


   mod_timer(&ndlp->nlp_delayfunc,
    jiffies + msecs_to_jiffies(delay));
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag |= NLP_DELAY_TMO;
   spin_unlock_irq(shost->host_lock);

   ndlp->nlp_prev_state = ndlp->nlp_state;
   if (cmd == 148)
    lpfc_nlp_set_state(vport, ndlp,
     NLP_STE_PRLI_ISSUE);
   else
    lpfc_nlp_set_state(vport, ndlp,
     NLP_STE_NPR_NODE);
   ndlp->nlp_last_elscmd = cmd;

   return 1;
  }
  switch (cmd) {
  case 151:
   lpfc_issue_els_flogi(vport, ndlp, cmdiocb->retry);
   return 1;
  case 152:
   lpfc_issue_els_fdisc(vport, ndlp, cmdiocb->retry);
   return 1;
  case 149:
   if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
    ndlp->nlp_prev_state = ndlp->nlp_state;
    lpfc_nlp_set_state(vport, ndlp,
         NLP_STE_PLOGI_ISSUE);
   }
   lpfc_issue_els_plogi(vport, did, cmdiocb->retry);
   return 1;
  case 153:
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_ADISC_ISSUE);
   lpfc_issue_els_adisc(vport, ndlp, cmdiocb->retry);
   return 1;
  case 148:
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PRLI_ISSUE);
   lpfc_issue_els_prli(vport, ndlp, cmdiocb->retry);
   return 1;
  case 150:
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_LOGO_ISSUE);
   lpfc_issue_els_logo(vport, ndlp, cmdiocb->retry);
   return 1;
  }
 }

 if (logerr) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
    "0137 No retry ELS command x%x to remote "
    "NPORT x%x: Out of Resources: Error:x%x/%x\n",
    cmd, did, irsp->ulpStatus,
    irsp->un.ulpWord[4]);
 }
 else {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0108 No retry ELS command x%x to remote "
    "NPORT x%x Retried:%d Error:x%x/%x\n",
    cmd, did, cmdiocb->retry, irsp->ulpStatus,
    irsp->un.ulpWord[4]);
 }
 return 0;
}
