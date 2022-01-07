
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uvd {int last_error; TYPE_1__* dev; } ;
typedef int cp ;
struct TYPE_4__ {int dev; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int dev_info (int *,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned short,unsigned short) ;
 int err (char*,char const*,int) ;
 int usb_control_msg (TYPE_1__*,int ,unsigned char,int,unsigned short,unsigned short,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (TYPE_1__*,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int ibmcam_veio(
 struct uvd *uvd,
 unsigned char req,
 unsigned short value,
 unsigned short index)
{
 static const char proc[] = "ibmcam_veio";
 unsigned char cp[8] ;
 int i;

 if (!CAMERA_IS_OPERATIONAL(uvd))
  return 0;

 if (req == 1) {
  i = usb_control_msg(
   uvd->dev,
   usb_rcvctrlpipe(uvd->dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
   value,
   index,
   cp,
   sizeof(cp),
   1000);







 } else {
  i = usb_control_msg(
   uvd->dev,
   usb_sndctrlpipe(uvd->dev, 0),
   req,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
   value,
   index,
   ((void*)0),
   0,
   1000);
 }
 if (i < 0) {
  err("%s: ERROR=%d. Camera stopped; Reconnect or reload driver.",
      proc, i);
  uvd->last_error = i;
 }
 return i;
}
