
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int urb_length; int data_count; int urb_count; } ;
struct uvd {int dp; TYPE_1__ stats; int streaming; scalar_t__ user_data; } ;
struct urb {scalar_t__ start_frame; int transfer_buffer_length; int status; int actual_length; struct uvd* context; } ;
struct konicawc {struct urb* last_data_urb; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int DEBUG (int,char*,...) ;
 int RingQueue_WakeUpInterruptible (int *) ;
 int err (char*) ;
 int konicawc_compress_iso (struct uvd*,struct urb*,struct urb*) ;
 int resubmit_urb (struct uvd*,struct urb*) ;

__attribute__((used)) static void konicawc_isoc_irq(struct urb *urb)
{
 struct uvd *uvd = urb->context;
 struct konicawc *cam = (struct konicawc *)uvd->user_data;


 if (!CAMERA_IS_OPERATIONAL(uvd))
  return;

 if (!uvd->streaming) {
  DEBUG(1, "Not streaming, but interrupt!");
  return;
 }

 DEBUG(3, "got frame %d len = %d buflen =%d", urb->start_frame, urb->actual_length, urb->transfer_buffer_length);

 uvd->stats.urb_count++;

 if (urb->transfer_buffer_length > 32) {
  cam->last_data_urb = urb;
  return;
 }

 if(cam->last_data_urb) {
  int len = 0;
  if(urb->start_frame != cam->last_data_urb->start_frame)
   err("Lost sync on frames");
  else if (!urb->status && !cam->last_data_urb->status)
   len = konicawc_compress_iso(uvd, cam->last_data_urb, urb);

  resubmit_urb(uvd, cam->last_data_urb);
  resubmit_urb(uvd, urb);
  cam->last_data_urb = ((void*)0);
  uvd->stats.urb_length = len;
  uvd->stats.data_count += len;
  if(len)
   RingQueue_WakeUpInterruptible(&uvd->dp);
  return;
 }
 return;
}
