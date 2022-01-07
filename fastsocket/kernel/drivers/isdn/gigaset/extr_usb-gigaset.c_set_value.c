
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_device {int dev; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_3__ {int * bchars; struct usb_device* udev; } ;


 int DEBUG_USBREQ ;
 int dev_err (int *,char*,int,...) ;
 int gig_dbg (int ,char*,unsigned int,unsigned int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int set_value(struct cardstate *cs, u8 req, u16 val)
{
 struct usb_device *udev = cs->hw.usb->udev;
 int r, r2;

 gig_dbg(DEBUG_USBREQ, "request %02x (%04x)",
  (unsigned)req, (unsigned)val);
 r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x12, 0x41,
       0xf , 0, ((void*)0), 0, 2000 );

 if (r < 0) {
  dev_err(&udev->dev, "error %d on request 0x12\n", -r);
  return r;
 }

 r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), req, 0x41,
       val, 0, ((void*)0), 0, 2000 );
 if (r < 0)
  dev_err(&udev->dev, "error %d on request 0x%02x\n",
   -r, (unsigned)req);

 r2 = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x19, 0x41,
        0, 0, cs->hw.usb->bchars, 6, 2000 );
 if (r2 < 0)
  dev_err(&udev->dev, "error %d on request 0x19\n", -r2);

 return r < 0 ? r : (r2 < 0 ? r2 : 0);
}
