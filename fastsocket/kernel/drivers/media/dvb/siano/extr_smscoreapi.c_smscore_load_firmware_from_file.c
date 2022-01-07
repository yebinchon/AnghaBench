
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smscore_device_t {int device_flags; int context; int device; } ;
struct firmware {int size; int data; } ;
typedef int (* loadfirmware_t ) (int ,int *,int ) ;


 int ALIGN (int ,int ) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SMS_ALLOC_ALIGNMENT ;
 int SMS_DEVICE_FAMILY2 ;
 int kfree (int *) ;
 int * kmalloc (int ,int) ;
 int memcpy (int *,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int sms_info (char*,...) ;
 int smscore_load_firmware_family2 (struct smscore_device_t*,int *,int ) ;

__attribute__((used)) static int smscore_load_firmware_from_file(struct smscore_device_t *coredev,
        char *filename,
        loadfirmware_t loadfirmware_handler)
{
 int rc = -ENOENT;
 const struct firmware *fw;
 u8 *fw_buffer;

 if (loadfirmware_handler == ((void*)0) && !(coredev->device_flags &
           SMS_DEVICE_FAMILY2))
  return -EINVAL;

 rc = request_firmware(&fw, filename, coredev->device);
 if (rc < 0) {
  sms_info("failed to open \"%s\"", filename);
  return rc;
 }
 sms_info("read FW %s, size=%zd", filename, fw->size);
 fw_buffer = kmalloc(ALIGN(fw->size, SMS_ALLOC_ALIGNMENT),
       GFP_KERNEL | GFP_DMA);
 if (fw_buffer) {
  memcpy(fw_buffer, fw->data, fw->size);

  rc = (coredev->device_flags & SMS_DEVICE_FAMILY2) ?
        smscore_load_firmware_family2(coredev,
          fw_buffer,
          fw->size) :
        loadfirmware_handler(coredev->context,
        fw_buffer, fw->size);

  kfree(fw_buffer);
 } else {
  sms_info("failed to allocate firmware buffer");
  rc = -ENOMEM;
 }

 release_firmware(fw);

 return rc;
}
