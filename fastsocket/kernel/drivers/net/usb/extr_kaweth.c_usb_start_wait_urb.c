
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_api_data {scalar_t__ done; int wqh; } ;
struct urb {int status; int actual_length; TYPE_1__* dev; struct usb_api_data* context; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int GFP_NOIO ;
 int dev_warn (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_event_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int usb_start_wait_urb(struct urb *urb, int timeout, int* actual_length)
{
 struct usb_api_data awd;
        int status;

        init_waitqueue_head(&awd.wqh);
        awd.done = 0;

        urb->context = &awd;
        status = usb_submit_urb(urb, GFP_NOIO);
        if (status) {

                usb_free_urb(urb);
                return status;
        }

 if (!wait_event_timeout(awd.wqh, awd.done, timeout)) {

                dev_warn(&urb->dev->dev, "usb_control/bulk_msg: timeout\n");
                usb_kill_urb(urb);
                status = -ETIMEDOUT;
        }
 else {
                status = urb->status;
 }

        if (actual_length) {
                *actual_length = urb->actual_length;
 }

        usb_free_urb(urb);
        return status;
}
