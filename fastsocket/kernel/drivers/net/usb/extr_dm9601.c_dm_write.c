
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int DM_WRITE_REGS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int devdbg (struct usbnet*,char*,int ,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int dm_write(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 void *buf = ((void*)0);
 int err = -ENOMEM;

 devdbg(dev, "dm_write() reg=0x%02x, length=%d", reg, length);

 if (data) {
  buf = kmalloc(length, GFP_KERNEL);
  if (!buf)
   goto out;
  memcpy(buf, data, length);
 }

 err = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         DM_WRITE_REGS,
         USB_DIR_OUT | USB_TYPE_VENDOR |USB_RECIP_DEVICE,
         0, reg, buf, length, USB_CTRL_SET_TIMEOUT);
 kfree(buf);
 if (err >= 0 && err < length)
  err = -EINVAL;
 out:
 return err;
}
