
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s2255_dev {int udev; } ;
typedef int s32 ;


 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,unsigned char,int,int ,int ,void*,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static long s2255_vendor_req(struct s2255_dev *dev, unsigned char Request,
        u16 Index, u16 Value, void *TransferBuffer,
        s32 TransferBufferLength, int bOut)
{
 int r;
 if (!bOut) {
  r = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
        Request,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE |
        USB_DIR_IN,
        Value, Index, TransferBuffer,
        TransferBufferLength, HZ * 5);
 } else {
  r = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
        Request, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
        Value, Index, TransferBuffer,
        TransferBufferLength, HZ * 5);
 }
 return r;
}
