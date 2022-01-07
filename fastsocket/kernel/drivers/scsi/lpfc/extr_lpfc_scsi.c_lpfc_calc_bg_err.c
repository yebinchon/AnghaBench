
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct scsi_dif_tuple {scalar_t__ app_tag; int ref_tag; scalar_t__ guard_tag; } ;
struct scsi_cmnd {int result; int sense_buffer; TYPE_1__* device; } ;
struct scatterlist {int length; } ;
struct lpfc_scsi_buf {int prot_seg_cnt; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int bg_apptag_err_cnt; int bg_reftag_err_cnt; int bg_guard_err_cnt; } ;
struct TYPE_2__ {int host; } ;


 int BGS_APPTAG_ERR_MASK ;
 int BGS_GUARD_ERR_MASK ;
 int BGS_REFTAG_ERR_MASK ;
 int DID_ABORT ;
 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;
 int KERN_WARNING ;
 int LOG_BG ;
 int LOG_FCP ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_PROT_NORMAL ;
 int SCSI_PROT_READ_STRIP ;
 int SCSI_PROT_WRITE_INSERT ;
 int ScsiResult (int ,int ) ;
 scalar_t__ be32_to_cpu (int) ;
 scalar_t__ lpfc_bg_crc (int *,unsigned int) ;
 scalar_t__ lpfc_bg_csum (int *,unsigned int) ;
 unsigned int lpfc_cmd_blksize (struct scsi_cmnd*) ;
 scalar_t__ lpfc_cmd_guard_csum (struct scsi_cmnd*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,unsigned long,scalar_t__,scalar_t__) ;
 int scsi_build_sense_buffer (int,int ,int ,int,int) ;
 scalar_t__ scsi_get_lba (struct scsi_cmnd*) ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;
 scalar_t__ scsi_host_get_guard (int ) ;
 struct scatterlist* scsi_prot_sglist (struct scsi_cmnd*) ;
 struct scatterlist* scsi_sglist (struct scsi_cmnd*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

void
lpfc_calc_bg_err(struct lpfc_hba *phba, struct lpfc_scsi_buf *lpfc_cmd)
{
 struct scatterlist *sgpe;
 struct scatterlist *sgde;
 struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
 struct scsi_dif_tuple *src = ((void*)0);
 uint8_t *data_src = ((void*)0);
 uint16_t guard_tag, guard_type;
 uint16_t start_app_tag, app_tag;
 uint32_t start_ref_tag, ref_tag;
 int prot, protsegcnt;
 int err_type, len, data_len;
 int chk_ref, chk_app, chk_guard;
 uint16_t sum;
 unsigned blksize;

 err_type = BGS_GUARD_ERR_MASK;
 sum = 0;
 guard_tag = 0;


 prot = scsi_get_prot_op(cmd);
 if ((prot == SCSI_PROT_READ_STRIP) ||
     (prot == SCSI_PROT_WRITE_INSERT) ||
     (prot == SCSI_PROT_NORMAL))
  goto out;


 chk_ref = 1;
 chk_app = 0;
 chk_guard = 0;


 sgpe = scsi_prot_sglist(cmd);
 protsegcnt = lpfc_cmd->prot_seg_cnt;

 if (sgpe && protsegcnt) {





  sgde = scsi_sglist(cmd);
  blksize = lpfc_cmd_blksize(cmd);
  data_src = (uint8_t *)sg_virt(sgde);
  data_len = sgde->length;
  if ((data_len & (blksize - 1)) == 0)
   chk_guard = 1;
  guard_type = scsi_host_get_guard(cmd->device->host);

  src = (struct scsi_dif_tuple *)sg_virt(sgpe);
  start_ref_tag = (uint32_t)scsi_get_lba(cmd);
  start_app_tag = src->app_tag;
  len = sgpe->length;
  while (src && protsegcnt) {
   while (len) {





    if ((src->ref_tag == 0xffffffff) ||
        (src->app_tag == 0xffff)) {
     start_ref_tag++;
     goto skipit;
    }


    if (chk_guard) {
     guard_tag = src->guard_tag;
     if (lpfc_cmd_guard_csum(cmd))
      sum = lpfc_bg_csum(data_src,
           blksize);
     else
      sum = lpfc_bg_crc(data_src,
          blksize);
     if ((guard_tag != sum)) {
      err_type = BGS_GUARD_ERR_MASK;
      goto out;
     }
    }


    ref_tag = be32_to_cpu(src->ref_tag);
    if (chk_ref && (ref_tag != start_ref_tag)) {
     err_type = BGS_REFTAG_ERR_MASK;
     goto out;
    }
    start_ref_tag++;


    app_tag = src->app_tag;
    if (chk_app && (app_tag != start_app_tag)) {
     err_type = BGS_APPTAG_ERR_MASK;
     goto out;
    }
skipit:
    len -= sizeof(struct scsi_dif_tuple);
    if (len < 0)
     len = 0;
    src++;

    data_src += blksize;
    data_len -= blksize;






    if (chk_guard && (data_len == 0)) {
     chk_guard = 0;
     sgde = sg_next(sgde);
     if (!sgde)
      goto out;

     data_src = (uint8_t *)sg_virt(sgde);
     data_len = sgde->length;
     if ((data_len & (blksize - 1)) == 0)
      chk_guard = 1;
    }
   }


   sgpe = sg_next(sgpe);
   if (sgpe) {
    src = (struct scsi_dif_tuple *)sg_virt(sgpe);
    len = sgpe->length;
   } else {
    src = ((void*)0);
   }
   protsegcnt--;
  }
 }
out:
 if (err_type == BGS_GUARD_ERR_MASK) {
  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
     0x10, 0x1);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);
  phba->bg_guard_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9069 BLKGRD: LBA %lx grd_tag error %x != %x\n",
    (unsigned long)scsi_get_lba(cmd),
    sum, guard_tag);

 } else if (err_type == BGS_REFTAG_ERR_MASK) {
  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
     0x10, 0x3);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);

  phba->bg_reftag_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9066 BLKGRD: LBA %lx ref_tag error %x != %x\n",
    (unsigned long)scsi_get_lba(cmd),
    ref_tag, start_ref_tag);

 } else if (err_type == BGS_APPTAG_ERR_MASK) {
  scsi_build_sense_buffer(1, cmd->sense_buffer, ILLEGAL_REQUEST,
     0x10, 0x2);
  cmd->result = DRIVER_SENSE << 24
   | ScsiResult(DID_ABORT, SAM_STAT_CHECK_CONDITION);

  phba->bg_apptag_err_cnt++;
  lpfc_printf_log(phba, KERN_WARNING, LOG_FCP | LOG_BG,
    "9041 BLKGRD: LBA %lx app_tag error %x != %x\n",
    (unsigned long)scsi_get_lba(cmd),
    app_tag, start_app_tag);
 }
}
