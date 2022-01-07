
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_3__ {struct usb_device* udev; } ;


 int DEBUG_USBREQ ;
 int gig_dbg (int ,char*,unsigned int,unsigned int) ;
 unsigned int tiocm_to_gigaset (unsigned int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,unsigned int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int gigaset_set_modem_ctrl(struct cardstate *cs, unsigned old_state,
      unsigned new_state)
{
 struct usb_device *udev = cs->hw.usb->udev;
 unsigned mask, val;
 int r;

 mask = tiocm_to_gigaset(old_state ^ new_state);
 val = tiocm_to_gigaset(new_state);

 gig_dbg(DEBUG_USBREQ, "set flags 0x%02x with mask 0x%02x", val, mask);

 r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 7, 0x41,
       (val & 0xff) | ((mask & 0xff) << 8), 0,
       ((void*)0), 0, 2000 );
 if (r < 0)
  return r;

 return 0;
}
