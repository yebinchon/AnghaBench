
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_ccw_req {scalar_t__ status; int magic; struct dasd_device* startdev; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int ebcname; } ;


 scalar_t__ DASD_CQR_IN_IO ;
 char* DASD_CQR_QUEUED ;
 int DBF_DEBUG ;
 int DBF_EVENT_DEVID (int ,struct ccw_device*,char*,char*) ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int dasd_device_clear_timer (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void dasd_handle_killed_request(struct ccw_device *cdev,
           unsigned long intparm)
{
 struct dasd_ccw_req *cqr;
 struct dasd_device *device;

 if (!intparm)
  return;
 cqr = (struct dasd_ccw_req *) intparm;
 if (cqr->status != DASD_CQR_IN_IO) {
  DBF_EVENT_DEVID(DBF_DEBUG, cdev,
    "invalid status in handle_killed_request: "
    "%02x", cqr->status);
  return;
 }

 device = dasd_device_from_cdev_locked(cdev);
 if (IS_ERR(device)) {
  DBF_EVENT_DEVID(DBF_DEBUG, cdev, "%s",
    "unable to get device from cdev");
  return;
 }

 if (!cqr->startdev ||
     device != cqr->startdev ||
     strncmp(cqr->startdev->discipline->ebcname,
      (char *) &cqr->magic, 4)) {
  DBF_EVENT_DEVID(DBF_DEBUG, cdev, "%s",
    "invalid device in request");
  dasd_put_device(device);
  return;
 }


 cqr->status = DASD_CQR_QUEUED;

 dasd_device_clear_timer(device);
 dasd_schedule_device_bh(device);
 dasd_put_device(device);
}
