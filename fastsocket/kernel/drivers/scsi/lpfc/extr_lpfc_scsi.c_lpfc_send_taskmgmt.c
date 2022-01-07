
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_3__ {int * ulpWord; } ;
struct TYPE_4__ {TYPE_1__ un; int ulpStatus; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_2__ iocb; int iocb_cmpl; int sli4_xritag; } ;
struct lpfc_scsi_buf {int status; int timeout; struct lpfc_iocbq cur_iocbq; struct lpfc_rport_data* rdata; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_rpi; } ;
struct lpfc_hba {int cfg_task_mgmt_tmo; } ;


 int FAILED ;
 int IOCB_BUSY ;
 int IOCB_SUCCESS ;
 int IOCB_TIMEDOUT ;
 int IOSTAT_DRIVER_REJECT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_FCP ;
 int LPFC_FCP_RING ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SUCCESS ;
 int TIMEOUT_ERROR ;
 struct lpfc_scsi_buf* lpfc_get_scsi_buf (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,unsigned int,unsigned int,int ,int ,int ,...) ;
 int lpfc_release_scsi_buf (struct lpfc_hba*,struct lpfc_scsi_buf*) ;
 int lpfc_scsi_prep_task_mgmt_cmd (struct lpfc_vport*,struct lpfc_scsi_buf*,unsigned int,int ) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb_wait (struct lpfc_hba*,int ,struct lpfc_iocbq*,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_taskmgmt_name (int ) ;
 int lpfc_tskmgmt_def_cmpl ;

__attribute__((used)) static int
lpfc_send_taskmgmt(struct lpfc_vport *vport, struct lpfc_rport_data *rdata,
      unsigned tgt_id, unsigned int lun_id,
      uint8_t task_mgmt_cmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_scsi_buf *lpfc_cmd;
 struct lpfc_iocbq *iocbq;
 struct lpfc_iocbq *iocbqrsp;
 struct lpfc_nodelist *pnode = rdata->pnode;
 int ret;
 int status;

 if (!pnode || !NLP_CHK_NODE_ACT(pnode))
  return FAILED;

 lpfc_cmd = lpfc_get_scsi_buf(phba, rdata->pnode);
 if (lpfc_cmd == ((void*)0))
  return FAILED;
 lpfc_cmd->timeout = phba->cfg_task_mgmt_tmo;
 lpfc_cmd->rdata = rdata;

 status = lpfc_scsi_prep_task_mgmt_cmd(vport, lpfc_cmd, lun_id,
        task_mgmt_cmd);
 if (!status) {
  lpfc_release_scsi_buf(phba, lpfc_cmd);
  return FAILED;
 }

 iocbq = &lpfc_cmd->cur_iocbq;
 iocbqrsp = lpfc_sli_get_iocbq(phba);
 if (iocbqrsp == ((void*)0)) {
  lpfc_release_scsi_buf(phba, lpfc_cmd);
  return FAILED;
 }

 lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
    "0702 Issue %s to TGT %d LUN %d "
    "rpi x%x nlp_flag x%x Data: x%x x%x\n",
    lpfc_taskmgmt_name(task_mgmt_cmd), tgt_id, lun_id,
    pnode->nlp_rpi, pnode->nlp_flag, iocbq->sli4_xritag,
    iocbq->iocb_flag);

 status = lpfc_sli_issue_iocb_wait(phba, LPFC_FCP_RING,
       iocbq, iocbqrsp, lpfc_cmd->timeout);
 if (status != IOCB_SUCCESS) {
  if (status == IOCB_TIMEDOUT) {
   iocbq->iocb_cmpl = lpfc_tskmgmt_def_cmpl;
   ret = TIMEOUT_ERROR;
  } else
   ret = FAILED;
  lpfc_cmd->status = IOSTAT_DRIVER_REJECT;
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
    "0727 TMF %s to TGT %d LUN %d failed (%d, %d) "
    "iocb_flag x%x\n",
    lpfc_taskmgmt_name(task_mgmt_cmd),
    tgt_id, lun_id, iocbqrsp->iocb.ulpStatus,
    iocbqrsp->iocb.un.ulpWord[4],
    iocbq->iocb_flag);
 } else if (status == IOCB_BUSY)
  ret = FAILED;
 else
  ret = SUCCESS;

 lpfc_sli_release_iocbq(phba, iocbqrsp);

 if (ret != TIMEOUT_ERROR)
  lpfc_release_scsi_buf(phba, lpfc_cmd);

 return ret;
}
