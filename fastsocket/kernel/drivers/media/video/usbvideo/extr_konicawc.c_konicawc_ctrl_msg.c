
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uvd {int dev; } ;


 int usb_control_msg (int ,int ,int,int,int ,int ,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int konicawc_ctrl_msg(struct uvd *uvd, u8 dir, u8 request, u16 value, u16 index, void *buf, int len)
{
 int retval = usb_control_msg(uvd->dev,
  dir ? usb_rcvctrlpipe(uvd->dev, 0) : usb_sndctrlpipe(uvd->dev, 0),
      request, 0x40 | dir, value, index, buf, len, 1000);
 return retval < 0 ? retval : 0;
}
