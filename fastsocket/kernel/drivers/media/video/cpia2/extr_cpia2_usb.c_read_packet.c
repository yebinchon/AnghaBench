
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,size_t,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int read_packet(struct usb_device *udev,
         u8 request, u8 * registers, u16 start, size_t size)
{
 if (!registers || size <= 0)
  return -EINVAL;

 return usb_control_msg(udev,
          usb_rcvctrlpipe(udev, 0),
          request,
          USB_DIR_IN|USB_TYPE_VENDOR|USB_RECIP_DEVICE,
          start,
          0,
          registers,
          size,
          HZ);
}
