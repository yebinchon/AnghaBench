
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct bas_cardstate* bas; } ;
struct cardstate {int dev; int inbuf; TYPE_1__ hw; } ;
struct TYPE_6__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_5__ {int wLength; scalar_t__ wIndex; scalar_t__ wValue; int bRequest; int bRequestType; } ;
struct bas_cardstate {int rcvbuf_size; TYPE_3__ timer_cmd_in; int urb_cmd_in; int rcvbuf; TYPE_2__ dr_cmd_in; int udev; } ;


 int BS_ATRDPEND ;
 int BS_SUSPEND ;
 int DEBUG_USBREQ ;
 int EBUSY ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int HD_READ_ATMESSAGE ;
 int HZ ;
 int IN_VENDOR_REQ ;
 int add_timer (TYPE_3__*) ;
 int cmd_in_timeout ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*,...) ;
 int dev_notice (int ,char*) ;
 int get_usb_rcmsg (int) ;
 int gig_dbg (int ,char*,int) ;
 scalar_t__ jiffies ;
 int read_ctrl_callback ;
 int update_basstate (struct bas_cardstate*,int,int) ;
 int usb_fill_control_urb (int ,int ,int ,unsigned char*,int ,int,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int atread_submit(struct cardstate *cs, int timeout)
{
 struct bas_cardstate *ucs = cs->hw.bas;
 int basstate;
 int ret;

 gig_dbg(DEBUG_USBREQ, "-------> HD_READ_ATMESSAGE (%d)",
  ucs->rcvbuf_size);

 basstate = update_basstate(ucs, BS_ATRDPEND, 0);
 if (basstate & BS_ATRDPEND) {
  dev_err(cs->dev,
   "could not submit HD_READ_ATMESSAGE: URB busy\n");
  return -EBUSY;
 }

 if (basstate & BS_SUSPEND) {
  dev_notice(cs->dev,
      "HD_READ_ATMESSAGE not submitted, "
      "suspend in progress\n");
  update_basstate(ucs, 0, BS_ATRDPEND);

  return -ENODEV;
 }

 ucs->dr_cmd_in.bRequestType = IN_VENDOR_REQ;
 ucs->dr_cmd_in.bRequest = HD_READ_ATMESSAGE;
 ucs->dr_cmd_in.wValue = 0;
 ucs->dr_cmd_in.wIndex = 0;
 ucs->dr_cmd_in.wLength = cpu_to_le16(ucs->rcvbuf_size);
 usb_fill_control_urb(ucs->urb_cmd_in, ucs->udev,
        usb_rcvctrlpipe(ucs->udev, 0),
        (unsigned char*) & ucs->dr_cmd_in,
        ucs->rcvbuf, ucs->rcvbuf_size,
        read_ctrl_callback, cs->inbuf);

 if ((ret = usb_submit_urb(ucs->urb_cmd_in, GFP_ATOMIC)) != 0) {
  update_basstate(ucs, 0, BS_ATRDPEND);
  dev_err(cs->dev, "could not submit HD_READ_ATMESSAGE: %s\n",
   get_usb_rcmsg(ret));
  return ret;
 }

 if (timeout > 0) {
  gig_dbg(DEBUG_USBREQ, "setting timeout of %d/10 secs", timeout);
  ucs->timer_cmd_in.expires = jiffies + timeout * HZ / 10;
  ucs->timer_cmd_in.data = (unsigned long) cs;
  ucs->timer_cmd_in.function = cmd_in_timeout;
  add_timer(&ucs->timer_cmd_in);
 }
 return 0;
}
