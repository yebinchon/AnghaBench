
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_device {int dev; } ;
struct TYPE_3__ {int build; int patch; int minor; int major; } ;
struct fwentry {int loaded; char* fwname; int board_type; int intfw_size; int extfw_size; int * extfw; int * intfw; TYPE_1__ fw_version; TYPE_2__* fw; } ;
struct at76_fw_header {int ext_fw_len; int ext_fw_offset; int int_fw_len; int int_fw_offset; int build; int patch; int minor; int major; int str_offset; int board_type; } ;
typedef enum board_type { ____Placeholder_board_type } board_type ;
struct TYPE_4__ {int size; scalar_t__ data; } ;


 int DBG_DEVSTART ;
 int DBG_FW ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int at76_dbg (int ,char*,...) ;
 int dev_printk (int ,int *,char*,...) ;
 struct fwentry* firmwares ;
 int fw_mutex ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_firmware (TYPE_2__**,char*,int *) ;

__attribute__((used)) static struct fwentry *at76_load_firmware(struct usb_device *udev,
       enum board_type board_type)
{
 int ret;
 char *str;
 struct at76_fw_header *fwh;
 struct fwentry *fwe = &firmwares[board_type];

 mutex_lock(&fw_mutex);

 if (fwe->loaded) {
  at76_dbg(DBG_FW, "re-using previously loaded fw");
  goto exit;
 }

 at76_dbg(DBG_FW, "downloading firmware %s", fwe->fwname);
 ret = request_firmware(&fwe->fw, fwe->fwname, &udev->dev);
 if (ret < 0) {
  dev_printk(KERN_ERR, &udev->dev, "firmware %s not found!\n",
      fwe->fwname);
  dev_printk(KERN_ERR, &udev->dev,
      "you may need to download the firmware from "
      "http://developer.berlios.de/projects/at76c503a/\n");
  goto exit;
 }

 at76_dbg(DBG_FW, "got it.");
 fwh = (struct at76_fw_header *)(fwe->fw->data);

 if (fwe->fw->size <= sizeof(*fwh)) {
  dev_printk(KERN_ERR, &udev->dev,
      "firmware is too short (0x%zx)\n", fwe->fw->size);
  goto exit;
 }


 fwe->board_type = le32_to_cpu(fwh->board_type);
 if (fwe->board_type != board_type) {
  dev_printk(KERN_ERR, &udev->dev,
      "board type mismatch, requested %u, got %u\n",
      board_type, fwe->board_type);
  goto exit;
 }

 fwe->fw_version.major = fwh->major;
 fwe->fw_version.minor = fwh->minor;
 fwe->fw_version.patch = fwh->patch;
 fwe->fw_version.build = fwh->build;

 str = (char *)fwh + le32_to_cpu(fwh->str_offset);
 fwe->intfw = (u8 *)fwh + le32_to_cpu(fwh->int_fw_offset);
 fwe->intfw_size = le32_to_cpu(fwh->int_fw_len);
 fwe->extfw = (u8 *)fwh + le32_to_cpu(fwh->ext_fw_offset);
 fwe->extfw_size = le32_to_cpu(fwh->ext_fw_len);

 fwe->loaded = 1;

 dev_printk(KERN_DEBUG, &udev->dev,
     "using firmware %s (version %d.%d.%d-%d)\n",
     fwe->fwname, fwh->major, fwh->minor, fwh->patch, fwh->build);

 at76_dbg(DBG_DEVSTART, "board %u, int %d:%d, ext %d:%d", board_type,
   le32_to_cpu(fwh->int_fw_offset), le32_to_cpu(fwh->int_fw_len),
   le32_to_cpu(fwh->ext_fw_offset), le32_to_cpu(fwh->ext_fw_len));
 at76_dbg(DBG_DEVSTART, "firmware id %s", str);

exit:
 mutex_unlock(&fw_mutex);

 if (fwe->loaded)
  return fwe;
 else
  return ((void*)0);
}
