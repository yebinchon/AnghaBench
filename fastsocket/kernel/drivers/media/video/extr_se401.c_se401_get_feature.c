
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int dev; } ;


 int SE401_REQ_GET_EXT_FEATURE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,unsigned short,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static unsigned short se401_get_feature(struct usb_se401 *se401,
     unsigned short selector)
{



 unsigned char cp[2];
 usb_control_msg(
  se401->dev,
  usb_rcvctrlpipe(se401->dev, 0),
  SE401_REQ_GET_EXT_FEATURE,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  0,
  selector,
  cp,
  2,
  1000
 );
 return cp[0]+cp[1]*256;
}
