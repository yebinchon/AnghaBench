
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int dev; } ;


 int SE401_REQ_SET_EXT_FEATURE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned short,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int se401_set_feature(struct usb_se401 *se401, unsigned short selector,
        unsigned short param)
{




 return usb_control_msg(
  se401->dev,
  usb_sndctrlpipe(se401->dev, 0),
  SE401_REQ_SET_EXT_FEATURE,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  param,
  selector,
  ((void*)0),
  0,
  1000
 );
}
