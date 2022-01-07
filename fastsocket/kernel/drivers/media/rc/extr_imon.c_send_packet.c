
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct TYPE_7__ {int busy; int status; int finished; } ;
struct imon_context {TYPE_2__ tx; int lock; TYPE_3__* tx_urb; int usb_tx_buf; int usbdev_intf0; TYPE_1__* tx_endpoint; int tx_control; } ;
struct TYPE_8__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int bInterval; int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TASK_UNINTERRUPTIBLE ;
 void* cpu_to_le16 (int) ;
 int init_completion (int *) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;
 int smp_rmb () ;
 int usb_fill_control_urb (TYPE_3__*,int ,unsigned int,unsigned char*,int ,int,int ,struct imon_context*) ;
 int usb_fill_int_urb (TYPE_3__*,int ,unsigned int,int ,int,int ,struct imon_context*,int) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;
 unsigned int usb_sndintpipe (int ,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;
 int usb_tx_callback ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int send_packet(struct imon_context *ictx)
{
 unsigned int pipe;
 unsigned long timeout;
 int interval = 0;
 int retval = 0;
 struct usb_ctrlrequest *control_req = ((void*)0);


 if (!ictx->tx_control) {
  pipe = usb_sndintpipe(ictx->usbdev_intf0,
          ictx->tx_endpoint->bEndpointAddress);
  interval = ictx->tx_endpoint->bInterval;

  usb_fill_int_urb(ictx->tx_urb, ictx->usbdev_intf0, pipe,
     ictx->usb_tx_buf,
     sizeof(ictx->usb_tx_buf),
     usb_tx_callback, ictx, interval);

  ictx->tx_urb->actual_length = 0;
 } else {

  control_req = kmalloc(sizeof(struct usb_ctrlrequest),
          GFP_KERNEL);
  if (control_req == ((void*)0))
   return -ENOMEM;


  control_req->bRequestType = 0x21;
  control_req->bRequest = 0x09;
  control_req->wValue = cpu_to_le16(0x0200);
  control_req->wIndex = cpu_to_le16(0x0001);
  control_req->wLength = cpu_to_le16(0x0008);


  pipe = usb_sndctrlpipe(ictx->usbdev_intf0, 0);


  usb_fill_control_urb(ictx->tx_urb, ictx->usbdev_intf0,
         pipe, (unsigned char *)control_req,
         ictx->usb_tx_buf,
         sizeof(ictx->usb_tx_buf),
         usb_tx_callback, ictx);
  ictx->tx_urb->actual_length = 0;
 }

 init_completion(&ictx->tx.finished);
 ictx->tx.busy = 1;
 smp_rmb();

 retval = usb_submit_urb(ictx->tx_urb, GFP_KERNEL);
 if (retval) {
  ictx->tx.busy = 0;
  smp_rmb();
  pr_err("error submitting urb(%d)\n", retval);
 } else {

  mutex_unlock(&ictx->lock);
  retval = wait_for_completion_interruptible(
    &ictx->tx.finished);
  if (retval)
   pr_err("task interrupted\n");
  mutex_lock(&ictx->lock);

  retval = ictx->tx.status;
  if (retval)
   pr_err("packet tx failed (%d)\n", retval);
 }

 kfree(control_req);






 timeout = msecs_to_jiffies(5);
 set_current_state(TASK_UNINTERRUPTIBLE);
 schedule_timeout(timeout);

 return retval;
}
