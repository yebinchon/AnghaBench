
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 scalar_t__ GET_OPCODE (int*) ;
 int GET_U16_FROM_CDB (int*,int ) ;
 int GET_U8_FROM_CDB (int*,int ) ;
 int ILLEGAL_REQUEST ;
 int MODE_PAGE_ALL_LEN ;

 int MODE_PAGE_CACHING_LEN ;

 int MODE_PAGE_CONTROL_LEN ;

 int MODE_PAGE_INF_EXC_LEN ;

 int MODE_PAGE_POW_CND_LEN ;

 scalar_t__ MODE_SENSE ;
 int MODE_SENSE10_ALLOC_LEN_OFFSET ;
 int MODE_SENSE6_ALLOC_LEN_OFFSET ;
 int MODE_SENSE_PAGE_CODE_MASK ;
 int MODE_SENSE_PAGE_CODE_OFFSET ;
 int MODE_SENSE_PAGE_CONTROL_MASK ;
 int MODE_SENSE_PAGE_CONTROL_OFFSET ;
 int MODE_SENSE_PC_CURRENT_VALUES ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_fill_all_pages ;
 int nvme_trans_fill_caching_page ;
 int nvme_trans_fill_control_page ;
 int nvme_trans_fill_inf_exc_page ;
 int nvme_trans_fill_pow_cnd_page ;
 int nvme_trans_mode_page_create (struct nvme_ns*,struct sg_io_hdr*,int*,int,int,int *,int ) ;

__attribute__((used)) static int nvme_trans_mode_sense(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 u16 alloc_len;
 u8 cdb10 = 0;
 u8 page_code;
 u8 pc;

 if (GET_OPCODE(cmd) == MODE_SENSE) {
  alloc_len = GET_U8_FROM_CDB(cmd, MODE_SENSE6_ALLOC_LEN_OFFSET);
 } else {
  alloc_len = GET_U16_FROM_CDB(cmd,
      MODE_SENSE10_ALLOC_LEN_OFFSET);
  cdb10 = 1;
 }

 pc = GET_U8_FROM_CDB(cmd, MODE_SENSE_PAGE_CONTROL_OFFSET) &
      MODE_SENSE_PAGE_CONTROL_MASK;
 if (pc != MODE_SENSE_PC_CURRENT_VALUES) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  goto out;
 }

 page_code = GET_U8_FROM_CDB(cmd, MODE_SENSE_PAGE_CODE_OFFSET) &
     MODE_SENSE_PAGE_CODE_MASK;
 switch (page_code) {
 case 132:
  res = nvme_trans_mode_page_create(ns, hdr, cmd, alloc_len,
      cdb10,
      &nvme_trans_fill_caching_page,
      MODE_PAGE_CACHING_LEN);
  break;
 case 131:
  res = nvme_trans_mode_page_create(ns, hdr, cmd, alloc_len,
      cdb10,
      &nvme_trans_fill_control_page,
      MODE_PAGE_CONTROL_LEN);
  break;
 case 129:
  res = nvme_trans_mode_page_create(ns, hdr, cmd, alloc_len,
      cdb10,
      &nvme_trans_fill_pow_cnd_page,
      MODE_PAGE_POW_CND_LEN);
  break;
 case 130:
  res = nvme_trans_mode_page_create(ns, hdr, cmd, alloc_len,
      cdb10,
      &nvme_trans_fill_inf_exc_page,
      MODE_PAGE_INF_EXC_LEN);
  break;
 case 128:
  res = nvme_trans_mode_page_create(ns, hdr, cmd, alloc_len,
      cdb10,
      &nvme_trans_fill_all_pages,
      MODE_PAGE_ALL_LEN);
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
