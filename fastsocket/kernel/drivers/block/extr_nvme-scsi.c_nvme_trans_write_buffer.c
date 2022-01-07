
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;



 int BYTES_TO_DWORDS ;


 int GET_U24_FROM_CDB (scalar_t__*,int ) ;
 scalar_t__ GET_U8_FROM_CDB (scalar_t__*,int ) ;
 int ILLEGAL_REQUEST ;
 scalar_t__ NVME_MAX_FIRMWARE_SLOT ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 int WRITE_BUFFER_CDB_BUFFER_ID_OFFSET ;
 int WRITE_BUFFER_CDB_BUFFER_OFFSET_OFFSET ;
 scalar_t__ WRITE_BUFFER_CDB_MODE_MASK ;
 int WRITE_BUFFER_CDB_MODE_OFFSET ;
 int WRITE_BUFFER_CDB_PARM_LIST_LENGTH_OFFSET ;
 int nvme_admin_activate_fw ;
 int nvme_admin_download_fw ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_send_fw_cmd (struct nvme_ns*,struct sg_io_hdr*,int ,int,int,scalar_t__) ;

__attribute__((used)) static int nvme_trans_write_buffer(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 u32 buffer_offset, parm_list_length;
 u8 buffer_id, mode;

 parm_list_length =
  GET_U24_FROM_CDB(cmd, WRITE_BUFFER_CDB_PARM_LIST_LENGTH_OFFSET);
 if (parm_list_length % BYTES_TO_DWORDS != 0) {

  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  goto out;
 }
 buffer_id = GET_U8_FROM_CDB(cmd, WRITE_BUFFER_CDB_BUFFER_ID_OFFSET);
 if (buffer_id > NVME_MAX_FIRMWARE_SLOT) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  goto out;
 }
 mode = GET_U8_FROM_CDB(cmd, WRITE_BUFFER_CDB_MODE_OFFSET) &
      WRITE_BUFFER_CDB_MODE_MASK;
 buffer_offset =
  GET_U24_FROM_CDB(cmd, WRITE_BUFFER_CDB_BUFFER_OFFSET_OFFSET);

 switch (mode) {
 case 129:
  res = nvme_trans_send_fw_cmd(ns, hdr, nvme_admin_download_fw,
      parm_list_length, buffer_offset,
      buffer_id);
  if (res != SNTI_TRANSLATION_SUCCESS)
   goto out;
  res = nvme_trans_send_fw_cmd(ns, hdr, nvme_admin_activate_fw,
      parm_list_length, buffer_offset,
      buffer_id);
  break;
 case 128:
  res = nvme_trans_send_fw_cmd(ns, hdr, nvme_admin_download_fw,
      parm_list_length, buffer_offset,
      buffer_id);
  break;
 case 130:
  res = nvme_trans_send_fw_cmd(ns, hdr, nvme_admin_activate_fw,
      parm_list_length, buffer_offset,
      buffer_id);
  break;
 default:
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  break;
 }

 out:
 return res;
}
