
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; int net; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int kfree (void*) ;
 void* kmemdup (void const*,int ,int ) ;
 int netdev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int __usbnet_write_cmd(struct usbnet *dev, u8 cmd, u8 reqtype,
         u16 value, u16 index, const void *data,
         u16 size)
{
 void *buf = ((void*)0);
 int err = -ENOMEM;

 netdev_dbg(dev->net, "usbnet_write_cmd cmd=0x%02x reqtype=%02x"
     " value=0x%04x index=0x%04x size=%d\n",
     cmd, reqtype, value, index, size);

 if (data) {
  buf = kmemdup(data, size, GFP_KERNEL);
  if (!buf)
   goto out;
 }

 err = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
         cmd, reqtype, value, index, buf, size,
         USB_CTRL_SET_TIMEOUT);
 kfree(buf);

out:
 return err;
}
