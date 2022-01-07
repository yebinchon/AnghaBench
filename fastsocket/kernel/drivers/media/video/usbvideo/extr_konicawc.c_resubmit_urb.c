
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int dev; } ;
struct urb {int transfer_buffer_length; scalar_t__ status; int dev; TYPE_1__* iso_frame_desc; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int DEBUG (int,char*,int ) ;
 int FRAMES_PER_DESC ;
 int GFP_ATOMIC ;
 int err (char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void resubmit_urb(struct uvd *uvd, struct urb *urb)
{
 int i, ret;
 for (i = 0; i < FRAMES_PER_DESC; i++) {
  urb->iso_frame_desc[i].status = 0;
 }
 urb->dev = uvd->dev;
 urb->status = 0;
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 DEBUG(3, "submitting urb of length %d", urb->transfer_buffer_length);
 if(ret)
  err("usb_submit_urb error (%d)", ret);

}
