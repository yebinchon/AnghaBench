
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pm8001_ioctl_payload {int length; int func_specific; scalar_t__ id; } ;
struct pm8001_hba_info {int * nvmd_completion; TYPE_1__* fw_image; } ;
struct pm8001_fw_image_header {int image_length; } ;
struct fw_control_info {int len; int size; scalar_t__ retcode; int offset; scalar_t__ buffer; } ;
struct TYPE_4__ {int (* fw_flash_update_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;
struct TYPE_3__ {int size; scalar_t__ data; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENOMEM ;
 int FAIL_FILE_SIZE ;
 scalar_t__ FLASH_UPDATE_IN_PROGRESS ;
 int GFP_KERNEL ;
 int HEADER_LEN ;
 int IOCTL_BUF_SIZE ;
 TYPE_2__* PM8001_CHIP_DISP ;
 int be32_to_cpu (int) ;
 int completion ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int pm8001_update_flash(struct pm8001_hba_info *pm8001_ha)
{
 struct pm8001_ioctl_payload *payload;
 DECLARE_COMPLETION_ONSTACK(completion);
 u8 *ioctlbuffer = ((void*)0);
 u32 length = 0;
 struct fw_control_info *fwControl;
 u32 loopNumber, loopcount = 0;
 u32 sizeRead = 0;
 u32 partitionSize, partitionSizeTmp;
 u32 ret = 0;
 u32 partitionNumber = 0;
 struct pm8001_fw_image_header *image_hdr;

 length = 1024 * 16 + sizeof(*payload) - 1;
 ioctlbuffer = kzalloc(length, GFP_KERNEL);
 image_hdr = (struct pm8001_fw_image_header *)pm8001_ha->fw_image->data;
 if (!ioctlbuffer)
  return -ENOMEM;
 if (pm8001_ha->fw_image->size < 28) {
  ret = FAIL_FILE_SIZE;
  goto out;
 }

 while (sizeRead < pm8001_ha->fw_image->size) {
  partitionSizeTmp =
   *(u32 *)((u8 *)&image_hdr->image_length + sizeRead);
  partitionSize = be32_to_cpu(partitionSizeTmp);
  loopcount = (partitionSize + HEADER_LEN)/IOCTL_BUF_SIZE;
  if (loopcount % IOCTL_BUF_SIZE)
   loopcount++;
  if (loopcount == 0)
   loopcount++;
  for (loopNumber = 0; loopNumber < loopcount; loopNumber++) {
   payload = (struct pm8001_ioctl_payload *)ioctlbuffer;
   payload->length = 1024*16;
   payload->id = 0;
   fwControl =
         (struct fw_control_info *)&payload->func_specific;
   fwControl->len = IOCTL_BUF_SIZE;
   fwControl->size = partitionSize + HEADER_LEN;
   fwControl->retcode = 0;
   fwControl->offset = loopNumber * IOCTL_BUF_SIZE;



  if (((loopcount-loopNumber) == 1) &&
   ((partitionSize + HEADER_LEN) % IOCTL_BUF_SIZE)) {
   fwControl->len =
    (partitionSize + HEADER_LEN) % IOCTL_BUF_SIZE;
   memcpy((u8 *)fwControl->buffer,
    (u8 *)pm8001_ha->fw_image->data + sizeRead,
    (partitionSize + HEADER_LEN) % IOCTL_BUF_SIZE);
   sizeRead +=
    (partitionSize + HEADER_LEN) % IOCTL_BUF_SIZE;
  } else {
   memcpy((u8 *)fwControl->buffer,
    (u8 *)pm8001_ha->fw_image->data + sizeRead,
    IOCTL_BUF_SIZE);
   sizeRead += IOCTL_BUF_SIZE;
  }

  pm8001_ha->nvmd_completion = &completion;
  ret = PM8001_CHIP_DISP->fw_flash_update_req(pm8001_ha, payload);
  wait_for_completion(&completion);
  if (ret || (fwControl->retcode > FLASH_UPDATE_IN_PROGRESS)) {
   ret = fwControl->retcode;
   kfree(ioctlbuffer);
   ioctlbuffer = ((void*)0);
   break;
  }
 }
 if (ret)
  break;
 partitionNumber++;
}
out:
 kfree(ioctlbuffer);
 return ret;
}
