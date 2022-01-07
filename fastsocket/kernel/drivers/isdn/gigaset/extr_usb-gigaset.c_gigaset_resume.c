
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {int connected; int dev; TYPE_2__ hw; } ;
struct TYPE_3__ {int read_urb; } ;


 int DEBUG_SUSPEND ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int gig_dbg (int ,char*) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int gigaset_resume(struct usb_interface *intf)
{
 struct cardstate *cs = usb_get_intfdata(intf);
 int rc;


 cs->connected = 1;
 rc = usb_submit_urb(cs->hw.usb->read_urb, GFP_KERNEL);
 if (rc) {
  dev_err(cs->dev, "Could not submit read URB (error %d)\n", -rc);
  return rc;
 }

 gig_dbg(DEBUG_SUSPEND, "resume complete");
 return 0;
}
