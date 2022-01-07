
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;


 int ENOMEM ;
 int FORMAT_UNIT_IMMED_MASK ;
 size_t FORMAT_UNIT_IMMED_OFFSET ;
 int FORMAT_UNIT_LONG_PARM_LIST_LEN ;
 int FORMAT_UNIT_PROT_FIELD_USAGE_MASK ;
 size_t FORMAT_UNIT_PROT_FIELD_USAGE_OFFSET ;
 size_t FORMAT_UNIT_PROT_INT_OFFSET ;
 int GFP_KERNEL ;
 int ILLEGAL_REQUEST ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_copy_from_user (struct sg_io_hdr*,int*,int) ;

__attribute__((used)) static int nvme_trans_fmt_get_parm_header(struct sg_io_hdr *hdr, u8 len,
     u8 format_prot_info, u8 *nvme_pf_code)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 u8 *parm_list;
 u8 pf_usage, pf_code;

 parm_list = kmalloc(len, GFP_KERNEL);
 if (parm_list == ((void*)0)) {
  res = -ENOMEM;
  goto out;
 }
 res = nvme_trans_copy_from_user(hdr, parm_list, len);
 if (res != SNTI_TRANSLATION_SUCCESS)
  goto out_mem;

 if ((parm_list[FORMAT_UNIT_IMMED_OFFSET] &
    FORMAT_UNIT_IMMED_MASK) != 0) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  goto out_mem;
 }

 if (len == FORMAT_UNIT_LONG_PARM_LIST_LEN &&
     (parm_list[FORMAT_UNIT_PROT_INT_OFFSET] & 0x0F) != 0) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  goto out_mem;
 }
 pf_usage = parm_list[FORMAT_UNIT_PROT_FIELD_USAGE_OFFSET] &
   FORMAT_UNIT_PROT_FIELD_USAGE_MASK;
 pf_code = (pf_usage << 2) | format_prot_info;
 switch (pf_code) {
 case 0:
  *nvme_pf_code = 0;
  break;
 case 2:
  *nvme_pf_code = 1;
  break;
 case 3:
  *nvme_pf_code = 2;
  break;
 case 7:
  *nvme_pf_code = 3;
  break;
 default:
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  break;
 }

 out_mem:
 kfree(parm_list);
 out:
 return res;
}
