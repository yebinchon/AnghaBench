
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int state; scalar_t__ block; } ;


 int DASD_STATE_KNOWN ;
 int dasd_alloc_queue (scalar_t__) ;
 int dasd_get_device (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_state_new_to_known(struct dasd_device *device)
{
 int rc;





 dasd_get_device(device);

 if (device->block) {
  rc = dasd_alloc_queue(device->block);
  if (rc) {
   dasd_put_device(device);
   return rc;
  }
 }
 device->state = DASD_STATE_KNOWN;
 return 0;
}
