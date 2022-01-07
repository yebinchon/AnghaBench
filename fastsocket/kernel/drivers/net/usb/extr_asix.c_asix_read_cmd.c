
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int devdbg (struct usbnet*,char*,int ,int,int,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int asix_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
       u16 size, void *data)
{
 void *buf;
 int err = -ENOMEM;

 devdbg(dev,"asix_read_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
  cmd, value, index, size);

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  goto out;

 err = usb_control_msg(
  dev->udev,
  usb_rcvctrlpipe(dev->udev, 0),
  cmd,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value,
  index,
  buf,
  size,
  USB_CTRL_GET_TIMEOUT);
 if (err == size)
  memcpy(data, buf, size);
 else if (err >= 0)
  err = -EINVAL;
 kfree(buf);

out:
 return err;
}
