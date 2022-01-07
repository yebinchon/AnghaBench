
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dev; } ;
struct firmware {int size; int data; } ;


 int DEVICE_MODE_DVBT ;
 int DEVICE_MODE_DVBT_BDA ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int sms_err (char*,...) ;
 char* sms_get_fw_name (int,int) ;
 int sms_info (char*,char*,int,...) ;
 int sms_warn (char*,char*,int) ;
 char** smsusb1_fw_lkup ;
 int usb_bulk_msg (struct usb_device*,int ,int *,int ,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int smsusb1_load_firmware(struct usb_device *udev, int id, int board_id)
{
 const struct firmware *fw;
 u8 *fw_buffer;
 int rc, dummy;
 char *fw_filename;

 if (id < DEVICE_MODE_DVBT || id > DEVICE_MODE_DVBT_BDA) {
  sms_err("invalid firmware id specified %d", id);
  return -EINVAL;
 }

 fw_filename = sms_get_fw_name(id, board_id);

 rc = request_firmware(&fw, fw_filename, &udev->dev);
 if (rc < 0) {
  sms_warn("failed to open \"%s\" mode %d, "
    "trying again with default firmware", fw_filename, id);

  fw_filename = smsusb1_fw_lkup[id];
  rc = request_firmware(&fw, fw_filename, &udev->dev);
  if (rc < 0) {
   sms_warn("failed to open \"%s\" mode %d",
     fw_filename, id);

   return rc;
  }
 }

 fw_buffer = kmalloc(fw->size, GFP_KERNEL);
 if (fw_buffer) {
  memcpy(fw_buffer, fw->data, fw->size);

  rc = usb_bulk_msg(udev, usb_sndbulkpipe(udev, 2),
      fw_buffer, fw->size, &dummy, 1000);

  sms_info("sent %zd(%d) bytes, rc %d", fw->size, dummy, rc);

  kfree(fw_buffer);
 } else {
  sms_err("failed to allocate firmware buffer");
  rc = -ENOMEM;
 }
 sms_info("read FW %s, size=%zd", fw_filename, fw->size);

 release_firmware(fw);

 return rc;
}
