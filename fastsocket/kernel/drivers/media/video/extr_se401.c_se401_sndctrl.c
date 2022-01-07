
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int dev; } ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,unsigned short,int,unsigned short,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int se401_sndctrl(int set, struct usb_se401 *se401, unsigned short req,
    unsigned short value, unsigned char *cp, int size)
{
 return usb_control_msg(
  se401->dev,
  set ? usb_sndctrlpipe(se401->dev, 0) : usb_rcvctrlpipe(se401->dev, 0),
  req,
  (set ? USB_DIR_OUT : USB_DIR_IN) | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value,
  0,
  cp,
  size,
  1000
 );
}
