
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int const,int,int const,int const,int*,size_t,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int WritePacket(struct usb_device *udev, const u8 *packet, u8 *buf, size_t size)
{
 if (!packet)
  return -EINVAL;

 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
    packet[1] + (packet[0] << 8),
    USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    packet[2] + (packet[3] << 8),
    packet[4] + (packet[5] << 8), buf, size, 1000);
}
