
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sg_iovec {int iov_len; } ;
struct sg_io_hdr {int iovec_count; int dxfer_len; scalar_t__ dxferp; } ;
struct nvme_trans_io_cdb {int xfer_len; } ;
struct nvme_ns {int lba_shift; } ;


 int EFAULT ;
 int EINVAL ;
 int ILLEGAL_REQUEST ;




 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_PARAMETER ;
 int SNTI_INTERNAL_ERROR ;
 int SNTI_TRANSLATION_SUCCESS ;




 size_t copy_from_user (struct sg_iovec*,scalar_t__,int) ;
 int min (int,int) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_do_nvme_io (struct nvme_ns*,struct sg_io_hdr*,struct nvme_trans_io_cdb*,int) ;
 int nvme_trans_get_io_cdb10 (int*,struct nvme_trans_io_cdb*) ;
 int nvme_trans_get_io_cdb12 (int*,struct nvme_trans_io_cdb*) ;
 int nvme_trans_get_io_cdb16 (int*,struct nvme_trans_io_cdb*) ;
 int nvme_trans_get_io_cdb6 (int*,struct nvme_trans_io_cdb*) ;

__attribute__((used)) static int nvme_trans_io(struct nvme_ns *ns, struct sg_io_hdr *hdr, u8 is_write,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 struct nvme_trans_io_cdb cdb_info;
 u8 opcode = cmd[0];
 u64 xfer_bytes;
 u64 sum_iov_len = 0;
 struct sg_iovec sgl;
 int i;
 size_t not_copied;


 switch (opcode) {
 case 128:
 case 132:
  nvme_trans_get_io_cdb6(cmd, &cdb_info);
  break;
 case 131:
 case 135:
  nvme_trans_get_io_cdb10(cmd, &cdb_info);
  break;
 case 130:
 case 134:
  nvme_trans_get_io_cdb12(cmd, &cdb_info);
  break;
 case 129:
 case 133:
  nvme_trans_get_io_cdb16(cmd, &cdb_info);
  break;
 default:

  res = SNTI_INTERNAL_ERROR;
  goto out;
 }


 if (hdr->iovec_count > 0) {
  for (i = 0; i < hdr->iovec_count; i++) {
   not_copied = copy_from_user(&sgl, hdr->dxferp +
      i * sizeof(struct sg_iovec),
      sizeof(struct sg_iovec));
   if (not_copied)
    return -EFAULT;
   sum_iov_len += sgl.iov_len;

   if (sgl.iov_len % (1 << ns->lba_shift) != 0) {
    res = nvme_trans_completion(hdr,
      SAM_STAT_CHECK_CONDITION,
      ILLEGAL_REQUEST,
      SCSI_ASC_INVALID_PARAMETER,
      SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
    goto out;
   }
  }
 } else {
  sum_iov_len = hdr->dxfer_len;
 }


 xfer_bytes = min(((u64)hdr->dxfer_len), sum_iov_len);


 if (xfer_bytes != (cdb_info.xfer_len << ns->lba_shift)) {
  res = -EINVAL;
  goto out;
 }


 if (cdb_info.xfer_len == 0)
  goto out;


 res = nvme_trans_do_nvme_io(ns, hdr, &cdb_info, is_write);
 if (res != SNTI_TRANSLATION_SUCCESS)
  goto out;

 out:
 return res;
}
