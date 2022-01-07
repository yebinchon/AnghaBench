
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {struct usb_device* udev; } ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 int MCS7830_CTRL_TIMEOUT ;
 int MCS7830_WR_BMREQ ;
 int MCS7830_WR_BREQ ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int memcpy (void*,void*,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int ,void*,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int mcs7830_set_reg(struct usbnet *dev, u16 index, u16 size, void *data)
{
 struct usb_device *xdev = dev->udev;
 int ret;
 void *buffer;

 buffer = kmalloc(size, GFP_NOIO);
 if (buffer == ((void*)0))
  return -ENOMEM;

 memcpy(buffer, data, size);

 ret = usb_control_msg(xdev, usb_sndctrlpipe(xdev, 0), MCS7830_WR_BREQ,
         MCS7830_WR_BMREQ, 0x0000, index, buffer,
         size, MCS7830_CTRL_TIMEOUT);
 kfree(buffer);
 return ret;
}
