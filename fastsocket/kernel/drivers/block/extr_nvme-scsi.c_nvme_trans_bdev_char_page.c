
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int ENOMEM ;
 int EXTENDED_INQUIRY_DATA_PAGE_LENGTH ;
 int GFP_KERNEL ;
 int INQ_BDEV_CHARACTERISTICS_PAGE ;
 int SNTI_TRANSLATION_SUCCESS ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int min (int,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;

__attribute__((used)) static int nvme_trans_bdev_char_page(struct nvme_ns *ns, struct sg_io_hdr *hdr,
     int alloc_len)
{
 u8 *inq_response;
 int res = SNTI_TRANSLATION_SUCCESS;
 int xfer_len;

 inq_response = kzalloc(EXTENDED_INQUIRY_DATA_PAGE_LENGTH, GFP_KERNEL);
 if (inq_response == ((void*)0)) {
  res = -ENOMEM;
  goto out_mem;
 }

 inq_response[1] = INQ_BDEV_CHARACTERISTICS_PAGE;
 inq_response[2] = 0x00;
 inq_response[3] = 0x3C;
 inq_response[4] = 0x00;
 inq_response[5] = 0x01;
 inq_response[6] = 0x00;

 xfer_len = min(alloc_len, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
 res = nvme_trans_copy_to_user(hdr, inq_response, xfer_len);

 kfree(inq_response);
 out_mem:
 return res;
}
