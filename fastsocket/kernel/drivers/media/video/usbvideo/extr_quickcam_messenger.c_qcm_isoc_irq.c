
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int urb_length; int data_count; int urb_count; } ;
struct uvd {int dp; TYPE_1__ stats; int streaming; } ;
struct urb {int actual_length; struct uvd* context; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int RingQueue_WakeUpInterruptible (int *) ;
 int qcm_compress_iso (struct uvd*,struct urb*) ;
 int resubmit_urb (struct uvd*,struct urb*) ;

__attribute__((used)) static void qcm_isoc_irq(struct urb *urb)
{
 int len;
 struct uvd *uvd = urb->context;

 if (!CAMERA_IS_OPERATIONAL(uvd))
  return;

 if (!uvd->streaming)
  return;

 uvd->stats.urb_count++;

 if (!urb->actual_length) {
  resubmit_urb(uvd, urb);
  return;
 }

 len = qcm_compress_iso(uvd, urb);
 resubmit_urb(uvd, urb);
 uvd->stats.urb_length = len;
 uvd->stats.data_count += len;
 if (len)
  RingQueue_WakeUpInterruptible(&uvd->dp);
}
