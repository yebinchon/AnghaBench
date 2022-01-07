
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int M9206_CORE ;
 int M9206_FILTER ;
 int M9206_FW ;
 int M9206_FW_GO ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb (char*,...) ;
 int get_unaligned_le16 (scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int m920x_read (struct usb_device*,int ,int,int,int *,int) ;
 int m920x_write (struct usb_device*,int ,int,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int msleep (int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int m920x_firmware_download(struct usb_device *udev, const struct firmware *fw)
{
 u16 value, index, size;
 u8 read[4], *buff;
 int i, pass, ret = 0;

 buff = kmalloc(65536, GFP_KERNEL);
 if (buff == ((void*)0))
  return -ENOMEM;

 if ((ret = m920x_read(udev, M9206_FILTER, 0x0, 0x8000, read, 4)) != 0)
  goto done;
 deb("%x %x %x %x\n", read[0], read[1], read[2], read[3]);

 if ((ret = m920x_read(udev, M9206_FW, 0x0, 0x0, read, 1)) != 0)
  goto done;
 deb("%x\n", read[0]);

 for (pass = 0; pass < 2; pass++) {
  for (i = 0; i + (sizeof(u16) * 3) < fw->size;) {
   value = get_unaligned_le16(fw->data + i);
   i += sizeof(u16);

   index = get_unaligned_le16(fw->data + i);
   i += sizeof(u16);

   size = get_unaligned_le16(fw->data + i);
   i += sizeof(u16);

   if (pass == 1) {

    memcpy(buff, fw->data + i, size);

    ret = usb_control_msg(udev, usb_sndctrlpipe(udev,0),
            M9206_FW,
            USB_TYPE_VENDOR | USB_DIR_OUT,
            value, index, buff, size, 20);
    if (ret != size) {
     deb("error while uploading fw!\n");
     ret = -EIO;
     goto done;
    }
    msleep(3);
   }
   i += size;
  }
  if (i != fw->size) {
   deb("bad firmware file!\n");
   ret = -EINVAL;
   goto done;
  }
 }

 msleep(36);


 (void) m920x_write(udev, M9206_CORE, 0x01, M9206_FW_GO);
 deb("firmware uploaded!\n");

 done:
 kfree(buff);

 return ret;
}
