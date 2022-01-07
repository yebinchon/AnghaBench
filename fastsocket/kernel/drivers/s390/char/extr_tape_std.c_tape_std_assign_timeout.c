
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {struct tape_device* device; } ;
struct tape_device {TYPE_1__* cdev; int cdev_id; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int DBF_EVENT (int,char*,int ,...) ;
 int dev_name (int *) ;
 int tape_cancel_io (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static void
tape_std_assign_timeout(unsigned long data)
{
 struct tape_request * request;
 struct tape_device * device;
 int rc;

 request = (struct tape_request *) data;
 device = request->device;
 BUG_ON(!device);

 DBF_EVENT(3, "%08x: Assignment timeout. Device busy.\n",
   device->cdev_id);
 rc = tape_cancel_io(device, request);
 if(rc)
  DBF_EVENT(3, "(%s): Assign timeout: Cancel failed with rc = %i\n",
   dev_name(&device->cdev->dev), rc);
}
