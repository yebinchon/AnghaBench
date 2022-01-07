
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int ENOMEM ;
 int GET_INQ_ALLOC_LENGTH (scalar_t__*) ;
 scalar_t__ GET_INQ_EVPD_BIT (scalar_t__*) ;
 scalar_t__ GET_INQ_PAGE_CODE (scalar_t__*) ;
 int GFP_KERNEL ;
 int ILLEGAL_REQUEST ;
 scalar_t__ INQ_STANDARD_INQUIRY_PAGE ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 int STANDARD_INQUIRY_LENGTH ;





 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int ,int ) ;
 int nvme_trans_bdev_char_page (struct nvme_ns*,struct sg_io_hdr*,int) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_device_id_page (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ;
 int nvme_trans_ext_inq_page (struct nvme_ns*,struct sg_io_hdr*,int) ;
 int nvme_trans_standard_inquiry_page (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ;
 int nvme_trans_supported_vpd_pages (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ;
 int nvme_trans_unit_serial_page (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ;

__attribute__((used)) static int nvme_trans_inquiry(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 u8 evpd;
 u8 page_code;
 int alloc_len;
 u8 *inq_response;

 evpd = GET_INQ_EVPD_BIT(cmd);
 page_code = GET_INQ_PAGE_CODE(cmd);
 alloc_len = GET_INQ_ALLOC_LENGTH(cmd);

 inq_response = kmalloc(STANDARD_INQUIRY_LENGTH, GFP_KERNEL);
 if (inq_response == ((void*)0)) {
  res = -ENOMEM;
  goto out_mem;
 }

 if (evpd == 0) {
  if (page_code == INQ_STANDARD_INQUIRY_PAGE) {
   res = nvme_trans_standard_inquiry_page(ns, hdr,
      inq_response, alloc_len);
  } else {
   res = nvme_trans_completion(hdr,
      SAM_STAT_CHECK_CONDITION,
      ILLEGAL_REQUEST,
      SCSI_ASC_INVALID_CDB,
      SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  }
 } else {
  switch (page_code) {
  case 128:
   res = nvme_trans_supported_vpd_pages(ns, hdr,
      inq_response, alloc_len);
   break;
  case 129:
   res = nvme_trans_unit_serial_page(ns, hdr, inq_response,
        alloc_len);
   break;
  case 131:
   res = nvme_trans_device_id_page(ns, hdr, inq_response,
        alloc_len);
   break;
  case 130:
   res = nvme_trans_ext_inq_page(ns, hdr, alloc_len);
   break;
  case 132:
   res = nvme_trans_bdev_char_page(ns, hdr, alloc_len);
   break;
  default:
   res = nvme_trans_completion(hdr,
      SAM_STAT_CHECK_CONDITION,
      ILLEGAL_REQUEST,
      SCSI_ASC_INVALID_CDB,
      SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
   break;
  }
 }
 kfree(inq_response);
 out_mem:
 return res;
}
