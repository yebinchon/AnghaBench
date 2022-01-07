
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dev; } ;


 int CTRL_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,unsigned char*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int send_control_msg(struct usb_device *udev, u8 request, u16 value,
       u16 index, unsigned char *cp, u16 size)
{
 int status;

 unsigned char *transfer_buffer = kmalloc(size, GFP_KERNEL);
 if (!transfer_buffer) {
  dev_err(&udev->dev, "kmalloc(%d) failed\n", size);
  return -ENOMEM;
 }

 memcpy(transfer_buffer, cp, size);

 status = usb_control_msg(udev,
     usb_sndctrlpipe(udev, 0),
     request,
     USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE, value, index,
     transfer_buffer, size, CTRL_TIMEOUT);

 kfree(transfer_buffer);

 if (status < 0)
  dev_err(&udev->dev,
   "Failed sending control message, error %d.\n", status);

 return status;
}
