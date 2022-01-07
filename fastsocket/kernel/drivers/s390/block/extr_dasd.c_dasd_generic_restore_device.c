
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int stopped; int flags; scalar_t__ block; TYPE_1__* discipline; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* restore ) (struct dasd_device*) ;} ;


 int DASD_FLAG_SUSPENDED ;
 int DASD_STOPPED_PM ;
 int DASD_UNRESUMED_PM ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 int clear_bit (int ,int *) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_device_remove_stop_bits (struct dasd_device*,int) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_schedule_block_bh (scalar_t__) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int stub1 (struct dasd_device*) ;

int dasd_generic_restore_device(struct ccw_device *cdev)
{
 struct dasd_device *device = dasd_device_from_cdev(cdev);
 int rc = 0;

 if (IS_ERR(device))
  return PTR_ERR(device);


 dasd_device_remove_stop_bits(device,
         (DASD_STOPPED_PM | DASD_UNRESUMED_PM));

 dasd_schedule_device_bh(device);





 if (device->discipline->restore && !(device->stopped))
  rc = device->discipline->restore(device);
 if (rc || device->stopped)




  device->stopped |= DASD_UNRESUMED_PM;

 if (device->block)
  dasd_schedule_block_bh(device->block);

 clear_bit(DASD_FLAG_SUSPENDED, &device->flags);
 dasd_put_device(device);
 return 0;
}
