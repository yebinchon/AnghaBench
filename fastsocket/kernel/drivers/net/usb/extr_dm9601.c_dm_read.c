
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int DM_READ_REGS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int devdbg (struct usbnet*,char*,int ,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int dm_read(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 void *buf;
 int err = -ENOMEM;

 devdbg(dev, "dm_read() reg=0x%02x length=%d", reg, length);

 buf = kmalloc(length, GFP_KERNEL);
 if (!buf)
  goto out;

 err = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         DM_READ_REGS,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0, reg, buf, length, USB_CTRL_SET_TIMEOUT);
 if (err == length)
  memcpy(data, buf, length);
 else if (err >= 0)
  err = -EINVAL;
 kfree(buf);

 out:
 return err;
}
