
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,int*,size_t,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ReadPacket(struct usb_device *udev, u8 *packet, u8 *buf, size_t size)
{
 if (!packet || size <= 0)
  return -EINVAL;

 return usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
    packet[1] + (packet[0] << 8),
    USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    packet[2] + (packet[3] << 8),
    packet[4] + (packet[5] << 8), buf, size, 1000);
}
