
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int bcs; int dev; TYPE_1__ hw; } ;
struct bas_cardstate {int basstate; int timer_ctrl; int urb_int_in; int urb_ctrl; int pending; int waitqueue; } ;
typedef int pm_message_t ;


 int BAS_TIMEOUT ;
 int BS_ATOPEN ;
 int BS_ATRDPEND ;
 int BS_ATWRPEND ;
 int BS_B1OPEN ;
 int BS_B2OPEN ;
 int BS_SUSPEND ;
 int DEBUG_SUSPEND ;
 int EBUSY ;
 int HD_CLOSE_ATCHANNEL ;
 int HZ ;
 int del_timer_sync (int *) ;
 int dev_warn (int ,char*) ;
 int gig_dbg (int ,char*,...) ;
 int req_submit (int ,int ,int ,int ) ;
 int update_basstate (struct bas_cardstate*,int,int) ;
 struct cardstate* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int gigaset_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct cardstate *cs = usb_get_intfdata(intf);
 struct bas_cardstate *ucs = cs->hw.bas;
 int rc;


 if (update_basstate(ucs, BS_SUSPEND, 0) & BS_SUSPEND) {
  gig_dbg(DEBUG_SUSPEND, "already suspended");
  return 0;
 }


 rc = wait_event_timeout(ucs->waitqueue,
   !(ucs->basstate &
     (BS_B1OPEN|BS_B2OPEN|BS_ATRDPEND|BS_ATWRPEND)),
   BAS_TIMEOUT*HZ/10);
 gig_dbg(DEBUG_SUSPEND, "wait_event_timeout() -> %d", rc);


 if (ucs->basstate & (BS_B1OPEN|BS_B2OPEN|BS_ATRDPEND|BS_ATWRPEND)) {
  dev_warn(cs->dev, "cannot suspend:\n");
  if (ucs->basstate & BS_B1OPEN)
   dev_warn(cs->dev, " B channel 1 open\n");
  if (ucs->basstate & BS_B2OPEN)
   dev_warn(cs->dev, " B channel 2 open\n");
  if (ucs->basstate & BS_ATRDPEND)
   dev_warn(cs->dev, " receiving AT reply\n");
  if (ucs->basstate & BS_ATWRPEND)
   dev_warn(cs->dev, " sending AT command\n");
  update_basstate(ucs, 0, BS_SUSPEND);
  return -EBUSY;
 }


 if (ucs->basstate & BS_ATOPEN) {
  gig_dbg(DEBUG_SUSPEND, "closing AT channel");
  rc = req_submit(cs->bcs, HD_CLOSE_ATCHANNEL, 0, 0);
  if (rc) {
   update_basstate(ucs, 0, BS_SUSPEND);
   return rc;
  }
  wait_event_timeout(ucs->waitqueue, !ucs->pending,
       BAS_TIMEOUT*HZ/10);

 }


 usb_kill_urb(ucs->urb_ctrl);
 usb_kill_urb(ucs->urb_int_in);
 del_timer_sync(&ucs->timer_ctrl);

 gig_dbg(DEBUG_SUSPEND, "suspend complete");
 return 0;
}
