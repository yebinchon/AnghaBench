
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_3__ {int bchars; struct usb_device* udev; } ;


 int DEBUG_USBREQ ;
 int gigaset_dbg_buffer (int ,char*,int,unsigned char const*) ;
 int memcpy (int ,unsigned char const*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,unsigned char const**,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int gigaset_brkchars(struct cardstate *cs, const unsigned char buf[6])
{
 struct usb_device *udev = cs->hw.usb->udev;

 gigaset_dbg_buffer(DEBUG_USBREQ, "brkchars", 6, buf);
 memcpy(cs->hw.usb->bchars, buf, 6);
 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x19, 0x41,
          0, 0, &buf, 6, 2000);
}
