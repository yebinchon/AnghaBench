
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int urb_length; int data_count; int urb_count; } ;
struct uvd {int debug; TYPE_3__* dev; int dp; TYPE_1__ stats; int streaming; } ;
struct urb {TYPE_3__* dev; int status; TYPE_2__* iso_frame_desc; int actual_length; int error_count; struct uvd* context; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ actual_length; scalar_t__ status; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int FRAMES_PER_DESC ;
 int GFP_KERNEL ;
 int RingQueue_WakeUpInterruptible (int *) ;
 int dev_info (int *,char*,...) ;
 int err (char*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usbvideo_CompressIsochronous (struct uvd*,struct urb*) ;

__attribute__((used)) static void usbvideo_IsocIrq(struct urb *urb)
{
 int i, ret, len;
 struct uvd *uvd = urb->context;


 if (!CAMERA_IS_OPERATIONAL(uvd))
  return;
 if (!uvd->streaming) {
  if (uvd->debug >= 1)
   dev_info(&uvd->dev->dev,
     "Not streaming, but interrupt!\n");
  return;
 }

 uvd->stats.urb_count++;
 if (urb->actual_length <= 0)
  goto urb_done_with;


 len = usbvideo_CompressIsochronous(uvd, urb);
 uvd->stats.urb_length = len;
 if (len <= 0)
  goto urb_done_with;


 uvd->stats.data_count += len;
 RingQueue_WakeUpInterruptible(&uvd->dp);

urb_done_with:
 for (i = 0; i < FRAMES_PER_DESC; i++) {
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0;
 }
 urb->status = 0;
 urb->dev = uvd->dev;
 ret = usb_submit_urb (urb, GFP_KERNEL);
 if(ret)
  err("usb_submit_urb error (%d)", ret);
 return;
}
