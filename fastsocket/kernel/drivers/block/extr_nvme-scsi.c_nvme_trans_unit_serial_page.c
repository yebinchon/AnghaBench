
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {int serial; } ;


 int INQ_SERIAL_NUMBER_LENGTH ;
 int INQ_UNIT_SERIAL_NUMBER_PAGE ;
 int SNTI_TRANSLATION_SUCCESS ;
 int STANDARD_INQUIRY_LENGTH ;
 int memset (int *,int ,int ) ;
 int min (int,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int *,int) ;
 int strncpy (int *,int ,int ) ;

__attribute__((used)) static int nvme_trans_unit_serial_page(struct nvme_ns *ns,
     struct sg_io_hdr *hdr, u8 *inq_response,
     int alloc_len)
{
 struct nvme_dev *dev = ns->dev;
 int res = SNTI_TRANSLATION_SUCCESS;
 int xfer_len;

 memset(inq_response, 0, STANDARD_INQUIRY_LENGTH);
 inq_response[1] = INQ_UNIT_SERIAL_NUMBER_PAGE;
 inq_response[3] = INQ_SERIAL_NUMBER_LENGTH;
 strncpy(&inq_response[4], dev->serial, INQ_SERIAL_NUMBER_LENGTH);

 xfer_len = min(alloc_len, STANDARD_INQUIRY_LENGTH);
 res = nvme_trans_copy_to_user(hdr, inq_response, xfer_len);

 return res;
}
