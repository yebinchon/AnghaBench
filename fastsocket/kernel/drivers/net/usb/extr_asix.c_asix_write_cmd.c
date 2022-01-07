
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int devdbg (struct usbnet*,char*,int ,int ,int ,int ) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int memcpy (void*,void*,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int asix_write_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
        u16 size, void *data)
{
 void *buf = ((void*)0);
 int err = -ENOMEM;

 devdbg(dev,"asix_write_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
  cmd, value, index, size);

 if (data) {
  buf = kmalloc(size, GFP_KERNEL);
  if (!buf)
   goto out;
  memcpy(buf, data, size);
 }

 err = usb_control_msg(
  dev->udev,
  usb_sndctrlpipe(dev->udev, 0),
  cmd,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value,
  index,
  buf,
  size,
  USB_CTRL_SET_TIMEOUT);
 kfree(buf);

out:
 return err;
}
