
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int ccw_queue; int flags; struct dasd_ccw_req* eer_cqr; } ;
struct dasd_ccw_req {int devlist; int status; } ;


 int DASD_CQR_QUEUED ;
 int DASD_FLAG_EER_IN_USE ;
 int DASD_FLAG_EER_SNSS ;
 int clear_bit (int ,int *) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int list_add (int *,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void dasd_eer_snss(struct dasd_device *device)
{
 struct dasd_ccw_req *cqr;

 cqr = device->eer_cqr;
 if (!cqr)
  return;
 if (test_and_set_bit(DASD_FLAG_EER_IN_USE, &device->flags)) {

  set_bit(DASD_FLAG_EER_SNSS, &device->flags);
  return;
 }

 clear_bit(DASD_FLAG_EER_SNSS, &device->flags);
 cqr->status = DASD_CQR_QUEUED;
 list_add(&cqr->devlist, &device->ccw_queue);
 dasd_schedule_device_bh(device);
}
