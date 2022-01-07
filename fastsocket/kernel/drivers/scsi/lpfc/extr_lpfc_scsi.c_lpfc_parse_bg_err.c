
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct sli3_bg_fields {scalar_t__ bgstat; scalar_t__ bghm; } ;
struct scsi_dif_tuple {int dummy; } ;
struct scsi_cmnd {int* cmnd; int result; int* sense_buffer; int request; TYPE_3__* device; } ;
struct lpfc_scsi_buf {struct scsi_cmnd* pCmd; } ;
struct TYPE_4__ {struct sli3_bg_fields sli3_bg; } ;
struct TYPE_5__ {TYPE_1__ unsli3; } ;
struct lpfc_iocbq {TYPE_2__ iocb; } ;
struct lpfc_hba {int bg_apptag_err_cnt; int bg_reftag_err_cnt; int bg_guard_err_cnt; } ;
struct TYPE_6__ {scalar_t__ sector_size; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_BG ;
 int LOG_FCP ;
 scalar_t__ LPFC_PG_TYPE_DIF_BUF ;
 int SAM_STAT_CHECK_CONDITION ;






 int ScsiResult (int ,int ) ;
 int _dump_buf_done ;
 int _dump_buf_lock ;
 int blk_rq_sectors (int ) ;
 scalar_t__ lpfc_bgs_get_apptag_err (scalar_t__) ;
 scalar_t__ lpfc_bgs_get_guard_err (scalar_t__) ;
 scalar_t__ lpfc_bgs_get_hi_water_mark_present (scalar_t__) ;
 scalar_t__ lpfc_bgs_get_invalid_prof (scalar_t__) ;
 scalar_t__ lpfc_bgs_get_reftag_err (scalar_t__) ;
 scalar_t__ lpfc_bgs_get_uninit_dif_block (scalar_t__) ;
 int lpfc_calc_bg_err (struct lpfc_hba*,struct lpfc_scsi_buf*) ;
 int lpfc_debug_save_data (struct lpfc_hba*,struct scsi_cmnd*) ;
 int lpfc_debug_save_dif (struct lpfc_hba*,struct scsi_cmnd*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int,...) ;
 scalar_t__ lpfc_prot_group_type (struct lpfc_hba*,struct scsi_cmnd*) ;
 int put_unaligned_be64 (scalar_t__,int*) ;
 int scsi_build_sense_buffer (int,int*,int ,int,int) ;
 scalar_t__ scsi_get_lba (struct scsi_cmnd*) ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
lpfc_parse_bg_err(struct lpfc_hba *phba, struct lpfc_scsi_buf *lpfc_cmd,
   struct lpfc_iocbq *pIocbOut)
{
 struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
 struct sli3_bg_fields *bgf = &pIocbOut->iocb.unsli3.sli3_bg;
 int ret = 0;
 uint32_t bghm = bgf->bghm;
 uint32_t bgstat = bgf->bgstat;
 uint64_t failing_sector = 0;

 spin_lock(&_dump_buf_lock);
 if (!_dump_buf_done) {
  lpfc_printf_log(phba, KERN_ERR, LOG_BG, "9070 BLKGRD: Saving"
   " Data for %u blocks to debugfs\n",
    (cmd->cmnd[7] << 8 | cmd->cmnd[8]));
  lpfc_debug_save_data(phba, cmd);


  if (lpfc_prot_group_type(phba, cmd) ==
    LPFC_PG_TYPE_DIF_BUF) {
   lpfc_printf_log(phba, KERN_ERR, LOG_BG, "9071 BLKGRD: "
    "Saving DIF for %u blocks to debugfs\n",
    (cmd->cmnd[7] << 8 | cmd->cmnd[8]));
   lpfc_debug_save_dif(phba, cmd);
  }

  _dump_buf_done = 1;
 }
 spin_unlock(&_dump_buf_lock);

 if (lpfc_bgs_get_invalid_prof(bgstat)) {
  cmd->result = ScsiResult(DID_ERROR, 0);
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9072 BLKGRD: Invalid BG Profile in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);
  ret = (-1);
  goto out;
 }

 if (lpfc_bgs_get_uninit_dif_block(bgstat)) {
  cmd->result = ScsiResult(DID_ERROR, 0);
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9073 BLKGRD: Invalid BG PDIF Block in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);
  ret = (-1);
  goto out;
 }

 if (lpfc_bgs_get_guard_err(bgstat)) {
  ret = 1;

  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
    0x10, 0x1);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);
  phba->bg_guard_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9055 BLKGRD: Guard Tag error in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);
 }

 if (lpfc_bgs_get_reftag_err(bgstat)) {
  ret = 1;

  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
    0x10, 0x3);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);

  phba->bg_reftag_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9056 BLKGRD: Ref Tag error in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);
 }

 if (lpfc_bgs_get_apptag_err(bgstat)) {
  ret = 1;

  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
    0x10, 0x2);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);

  phba->bg_apptag_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9061 BLKGRD: App Tag error in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);
 }

 if (lpfc_bgs_get_hi_water_mark_present(bgstat)) {






  cmd->sense_buffer[7] = 0xc;
  cmd->sense_buffer[8] = 0;
  cmd->sense_buffer[9] = 0xa;
  cmd->sense_buffer[10] = 0x80;


  switch (scsi_get_prot_op(cmd)) {
  case 133:
  case 128:
   bghm /= cmd->device->sector_size;
   break;
  case 131:
  case 130:
  case 132:
  case 129:
   bghm /= (cmd->device->sector_size +
    sizeof(struct scsi_dif_tuple));
   break;
  }

  failing_sector = scsi_get_lba(cmd);
  failing_sector += bghm;


  put_unaligned_be64(failing_sector, &cmd->sense_buffer[12]);
 }

 if (!ret) {

  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9057 BLKGRD: Unknown error in cmd"
    " 0x%x lba 0x%llx blk cnt 0x%x "
    "bgstat=x%x bghm=x%x\n", cmd->cmnd[0],
    (unsigned long long)scsi_get_lba(cmd),
    blk_rq_sectors(cmd->request), bgstat, bghm);


  lpfc_calc_bg_err(phba, lpfc_cmd);
 }
out:
 return ret;
}
