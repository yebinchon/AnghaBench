
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {scalar_t__ op; int status; int options; int cpaddr; } ;
struct tape_device {int tape_dnr; int cdev; TYPE_1__* discipline; } ;
struct TYPE_2__ {int (* check_locate ) (struct tape_device*,struct tape_request*) ;} ;


 int DBF_EVENT (int,char*,int) ;
 int EBUSY ;
 int TAPE_REQUEST_IN_IO ;
 int TAPE_REQUEST_QUEUED ;
 scalar_t__ TO_BLOCK ;
 int ccw_device_start (int ,int ,unsigned long,int,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
__tape_start_io(struct tape_device *device, struct tape_request *request)
{
 int rc;





 rc = ccw_device_start(
  device->cdev,
  request->cpaddr,
  (unsigned long) request,
  0x00,
  request->options
 );
 if (rc == 0) {
  request->status = TAPE_REQUEST_IN_IO;
 } else if (rc == -EBUSY) {

  request->status = TAPE_REQUEST_QUEUED;
  schedule_delayed_work(&device->tape_dnr, 0);
  rc = 0;
 } else {

  DBF_EVENT(1, "tape: start request failed with RC = %i\n", rc);
 }
 return rc;
}
