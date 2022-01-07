
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stv {int udev; } ;


 int PDEBUG (int,char*,int,unsigned short,int) ;
 int PENCAM_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,unsigned short,int,unsigned short,int ,unsigned char*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int stv_sndctrl (int set, struct usb_stv *stv680, unsigned short req, unsigned short value, unsigned char *buffer, int size)
{
 int ret = -1;

 switch (set) {
 case 0:
  ret = usb_control_msg (stv680->udev,
           usb_rcvctrlpipe (stv680->udev, 0),
           req,
           (USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT),
           value, 0, buffer, size, PENCAM_TIMEOUT);
  break;

 case 1:
  ret = usb_control_msg (stv680->udev,
           usb_sndctrlpipe (stv680->udev, 0),
           req,
           (USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT),
           value, 0, buffer, size, PENCAM_TIMEOUT);
  break;

 case 2:
  ret = usb_control_msg (stv680->udev,
           usb_rcvctrlpipe (stv680->udev, 0),
           req,
           (USB_DIR_IN | USB_RECIP_DEVICE),
           value, 0, buffer, size, PENCAM_TIMEOUT);
  break;

 case 3:
  ret = usb_control_msg (stv680->udev,
           usb_sndctrlpipe (stv680->udev, 0),
           req,
           (USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE),
           value, 0, buffer, size, PENCAM_TIMEOUT);
  break;

 }
 if ((ret < 0) && (req != 0x0a)) {
  PDEBUG (1, "STV(e): usb_control_msg error %i, request = 0x%x, error = %i", set, req, ret);
 }
 return ret;
}
