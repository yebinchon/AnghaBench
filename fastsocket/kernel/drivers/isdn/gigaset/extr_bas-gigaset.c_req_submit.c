
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bc_state {TYPE_3__* cs; } ;
struct TYPE_8__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_6__ {int bRequest; scalar_t__ wLength; scalar_t__ wIndex; int wValue; int bRequestType; } ;
struct bas_cardstate {int pending; int lock; TYPE_4__ timer_ctrl; int urb_ctrl; scalar_t__ retry_ctrl; TYPE_2__ dr_ctrl; int udev; } ;
struct TYPE_5__ {struct bas_cardstate* bas; } ;
struct TYPE_7__ {int dev; TYPE_1__ hw; } ;


 int DEBUG_USBREQ ;
 int EBUSY ;
 int GFP_ATOMIC ;
 int HZ ;
 int OUT_VENDOR_REQ ;
 int add_timer (TYPE_4__*) ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*,int,int) ;
 int get_usb_rcmsg (int) ;
 int gig_dbg (int ,char*,int,...) ;
 scalar_t__ jiffies ;
 int req_timeout ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_fill_control_urb (int ,int ,int ,unsigned char*,int *,int ,int ,struct bas_cardstate*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int write_ctrl_callback ;

__attribute__((used)) static int req_submit(struct bc_state *bcs, int req, int val, int timeout)
{
 struct bas_cardstate *ucs = bcs->cs->hw.bas;
 int ret;
 unsigned long flags;

 gig_dbg(DEBUG_USBREQ, "-------> 0x%02x (%d)", req, val);

 spin_lock_irqsave(&ucs->lock, flags);
 if (ucs->pending) {
  spin_unlock_irqrestore(&ucs->lock, flags);
  dev_err(bcs->cs->dev,
   "submission of request 0x%02x failed: "
   "request 0x%02x still pending\n",
   req, ucs->pending);
  return -EBUSY;
 }

 ucs->dr_ctrl.bRequestType = OUT_VENDOR_REQ;
 ucs->dr_ctrl.bRequest = req;
 ucs->dr_ctrl.wValue = cpu_to_le16(val);
 ucs->dr_ctrl.wIndex = 0;
 ucs->dr_ctrl.wLength = 0;
 usb_fill_control_urb(ucs->urb_ctrl, ucs->udev,
        usb_sndctrlpipe(ucs->udev, 0),
        (unsigned char*) &ucs->dr_ctrl, ((void*)0), 0,
        write_ctrl_callback, ucs);
 ucs->retry_ctrl = 0;
 ret = usb_submit_urb(ucs->urb_ctrl, GFP_ATOMIC);
 if (unlikely(ret)) {
  dev_err(bcs->cs->dev, "could not submit request 0x%02x: %s\n",
   req, get_usb_rcmsg(ret));
  spin_unlock_irqrestore(&ucs->lock, flags);
  return ret;
 }
 ucs->pending = req;

 if (timeout > 0) {
  gig_dbg(DEBUG_USBREQ, "setting timeout of %d/10 secs", timeout);
  ucs->timer_ctrl.expires = jiffies + timeout * HZ / 10;
  ucs->timer_ctrl.data = (unsigned long) bcs;
  ucs->timer_ctrl.function = req_timeout;
  add_timer(&ucs->timer_ctrl);
 }

 spin_unlock_irqrestore(&ucs->lock, flags);
 return 0;
}
