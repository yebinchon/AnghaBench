
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int DESCRIPTOR_FORMAT_SENSE_DATA_TYPE ;
 int DESC_FMT_SENSE_DATA_SIZE ;
 int DESC_FORMAT_SENSE_DATA ;
 int ENOMEM ;
 int FIXED_FMT_SENSE_DATA_SIZE ;
 int FIXED_SENSE_DATA ;
 int FIXED_SENSE_DATA_ADD_LENGTH ;
 int GET_REQUEST_SENSE_ALLOC_LENGTH (int*) ;
 int GET_U8_FROM_CDB (int*,int ) ;
 int GFP_KERNEL ;
 int NO_SENSE ;
 int REQUEST_SENSE_DESC_MASK ;
 int REQUEST_SENSE_DESC_OFFSET ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_NO_SENSE ;
 int SNTI_TRANSLATION_SUCCESS ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int min (int,int) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;

__attribute__((used)) static int nvme_trans_request_sense(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 u8 alloc_len, xfer_len, resp_size;
 u8 desc_format;
 u8 *response;

 alloc_len = GET_REQUEST_SENSE_ALLOC_LENGTH(cmd);
 desc_format = GET_U8_FROM_CDB(cmd, REQUEST_SENSE_DESC_OFFSET);
 desc_format &= REQUEST_SENSE_DESC_MASK;

 resp_size = ((desc_format) ? (DESC_FMT_SENSE_DATA_SIZE) :
     (FIXED_FMT_SENSE_DATA_SIZE));
 response = kzalloc(resp_size, GFP_KERNEL);
 if (response == ((void*)0)) {
  res = -ENOMEM;
  goto out;
 }

 if (desc_format == DESCRIPTOR_FORMAT_SENSE_DATA_TYPE) {

  response[0] = DESC_FORMAT_SENSE_DATA;
  response[1] = NO_SENSE;

  response[2] = SCSI_ASC_NO_SENSE;
  response[3] = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;

 } else {

  response[0] = FIXED_SENSE_DATA;

  response[2] = NO_SENSE;

  response[7] = FIXED_SENSE_DATA_ADD_LENGTH;

  response[12] = SCSI_ASC_NO_SENSE;
  response[13] = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;


 }

 xfer_len = min(alloc_len, resp_size);
 res = nvme_trans_copy_to_user(hdr, response, xfer_len);

 kfree(response);
 out:
 return res;
}
