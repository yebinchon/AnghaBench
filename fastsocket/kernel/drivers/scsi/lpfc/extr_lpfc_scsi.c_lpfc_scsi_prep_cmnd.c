
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
struct scsi_cmnd {int sc_data_direction; scalar_t__ cmd_len; int cmnd; TYPE_2__* device; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_13__ {int icd; } ;
struct TYPE_14__ {TYPE_5__ fcp_ext; } ;
struct TYPE_11__ {scalar_t__ fcpi_parm; } ;
struct TYPE_12__ {TYPE_3__ fcpi; } ;
struct TYPE_16__ {size_t ulpContext; int ulpFCP2Rcvy; int ulpClass; int ulpTimeout; TYPE_6__ unsli3; void* ulpPU; TYPE_4__ un; int ulpCommand; } ;
struct lpfc_iocbq {struct lpfc_vport* vport; TYPE_8__ iocb; int iocb_cmpl; struct lpfc_scsi_buf* context1; } ;
struct lpfc_scsi_buf {int timeout; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; TYPE_1__* fcp_rsp; struct lpfc_iocbq cur_iocbq; } ;
struct lpfc_nodelist {size_t nlp_rpi; int nlp_fcp_info; } ;
struct TYPE_15__ {size_t* rpi_ids; } ;
struct lpfc_hba {int sli_rev; int sli3_options; TYPE_7__ sli4_hba; int fc4ControlRequests; int fc4InputRequests; int fc4OutputRequests; } ;
struct fcp_cmnd {scalar_t__ fcpCntl3; void* fcpCntl1; int * fcpCdb; int fcp_lun; scalar_t__ fcpCntl2; } ;
struct TYPE_10__ {int lun; } ;
struct TYPE_9__ {scalar_t__ rspSnsLen; } ;
typedef TYPE_8__ IOCB_t ;


 int CMD_FCP_ICMND64_CR ;
 int CMD_FCP_IREAD64_CR ;
 int CMD_FCP_IWRITE64_CR ;
 int DMA_TO_DEVICE ;
 void* HEAD_OF_Q ;

 scalar_t__ LPFC_FCP_CDB_LEN ;
 int LPFC_SLI3_BG_ENABLED ;
 int LPFC_SLI_REV4 ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FCP_2_DEVICE ;
 void* ORDERED_Q ;

 void* PARM_READ_CHECK ;
 scalar_t__ READ_DATA ;
 void* SIMPLE_Q ;
 scalar_t__ WRITE_DATA ;
 int int_to_scsilun (int ,int *) ;
 int lpfc_fcpcmd_to_iocb (int ,struct fcp_cmnd*) ;
 int lpfc_scsi_cmd_iocb_cmpl ;
 int memcpy (int *,int ,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ scsi_populate_tag_msg (struct scsi_cmnd*,char*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void
lpfc_scsi_prep_cmnd(struct lpfc_vport *vport, struct lpfc_scsi_buf *lpfc_cmd,
      struct lpfc_nodelist *pnode)
{
 struct lpfc_hba *phba = vport->phba;
 struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
 struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
 IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
 struct lpfc_iocbq *piocbq = &(lpfc_cmd->cur_iocbq);
 int datadir = scsi_cmnd->sc_data_direction;
 char tag[2];
 uint8_t *ptr;
 bool sli4;

 if (!pnode || !NLP_CHK_NODE_ACT(pnode))
  return;

 lpfc_cmd->fcp_rsp->rspSnsLen = 0;

 lpfc_cmd->fcp_cmnd->fcpCntl2 = 0;

 int_to_scsilun(lpfc_cmd->pCmd->device->lun,
   &lpfc_cmd->fcp_cmnd->fcp_lun);

 ptr = &fcp_cmnd->fcpCdb[0];
 memcpy(ptr, scsi_cmnd->cmnd, scsi_cmnd->cmd_len);
 if (scsi_cmnd->cmd_len < LPFC_FCP_CDB_LEN) {
  ptr += scsi_cmnd->cmd_len;
  memset(ptr, 0, (LPFC_FCP_CDB_LEN - scsi_cmnd->cmd_len));
 }

 if (scsi_populate_tag_msg(scsi_cmnd, tag)) {
  switch (tag[0]) {
  case 129:
   fcp_cmnd->fcpCntl1 = HEAD_OF_Q;
   break;
  case 128:
   fcp_cmnd->fcpCntl1 = ORDERED_Q;
   break;
  default:
   fcp_cmnd->fcpCntl1 = SIMPLE_Q;
   break;
  }
 } else
  fcp_cmnd->fcpCntl1 = SIMPLE_Q;

 sli4 = (phba->sli_rev == LPFC_SLI_REV4);







 if (scsi_sg_count(scsi_cmnd)) {
  if (datadir == DMA_TO_DEVICE) {
   iocb_cmd->ulpCommand = CMD_FCP_IWRITE64_CR;
   if (sli4)
    iocb_cmd->ulpPU = PARM_READ_CHECK;
   else {
    iocb_cmd->un.fcpi.fcpi_parm = 0;
    iocb_cmd->ulpPU = 0;
   }
   fcp_cmnd->fcpCntl3 = WRITE_DATA;
   phba->fc4OutputRequests++;
  } else {
   iocb_cmd->ulpCommand = CMD_FCP_IREAD64_CR;
   iocb_cmd->ulpPU = PARM_READ_CHECK;
   fcp_cmnd->fcpCntl3 = READ_DATA;
   phba->fc4InputRequests++;
  }
 } else {
  iocb_cmd->ulpCommand = CMD_FCP_ICMND64_CR;
  iocb_cmd->un.fcpi.fcpi_parm = 0;
  iocb_cmd->ulpPU = 0;
  fcp_cmnd->fcpCntl3 = 0;
  phba->fc4ControlRequests++;
 }
 if (phba->sli_rev == 3 &&
     !(phba->sli3_options & LPFC_SLI3_BG_ENABLED))
  lpfc_fcpcmd_to_iocb(iocb_cmd->unsli3.fcp_ext.icd, fcp_cmnd);




 piocbq->iocb.ulpContext = pnode->nlp_rpi;
 if (sli4)
  piocbq->iocb.ulpContext =
    phba->sli4_hba.rpi_ids[pnode->nlp_rpi];
 if (pnode->nlp_fcp_info & NLP_FCP_2_DEVICE)
  piocbq->iocb.ulpFCP2Rcvy = 1;
 else
  piocbq->iocb.ulpFCP2Rcvy = 0;

 piocbq->iocb.ulpClass = (pnode->nlp_fcp_info & 0x0f);
 piocbq->context1 = lpfc_cmd;
 piocbq->iocb_cmpl = lpfc_scsi_cmd_iocb_cmpl;
 piocbq->iocb.ulpTimeout = lpfc_cmd->timeout;
 piocbq->vport = vport;
}
