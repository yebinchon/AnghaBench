
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int flags; struct dasd_block* block; } ;
struct dasd_block {scalar_t__ bdev; int open_count; } ;
struct ccw_device {int dev; } ;


 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE_RUNNING ;
 int DASD_STATE_NEW ;
 int EBUSY ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 int _wait_for_empty_queues (struct dasd_device*) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int dasd_delete_device (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_free_block (struct dasd_block*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 int dev_name (int *) ;
 int fsync_bdev (scalar_t__) ;
 int pr_warning (char*,int ,...) ;
 int set_bit (int ,int *) ;
 int shutdown_waitq ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int ) ;

int dasd_generic_set_offline(struct ccw_device *cdev)
{
 struct dasd_device *device;
 struct dasd_block *block;
 int max_count, open_count, rc;

 rc = 0;
 device = dasd_device_from_cdev(cdev);
 if (IS_ERR(device))
  return PTR_ERR(device);







 if (device->block) {
  max_count = device->block->bdev ? 0 : -1;
  open_count = atomic_read(&device->block->open_count);
  if (open_count > max_count) {
   if (open_count > 0)
    pr_warning("%s: The DASD cannot be set offline "
        "with open count %i\n",
        dev_name(&cdev->dev), open_count);
   else
    pr_warning("%s: The DASD cannot be set offline "
        "while it is in use\n",
        dev_name(&cdev->dev));
   clear_bit(DASD_FLAG_OFFLINE, &device->flags);
   dasd_put_device(device);
   return -EBUSY;
  }
 }

 if (test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {





  if (test_and_set_bit(DASD_FLAG_OFFLINE, &device->flags)) {

   dasd_put_device(device);
   return -EBUSY;
  } else
   clear_bit(DASD_FLAG_SAFE_OFFLINE, &device->flags);

 } else
  if (test_bit(DASD_FLAG_OFFLINE, &device->flags)) {

   dasd_put_device(device);
   return -EBUSY;
  }






 if (test_and_clear_bit(DASD_FLAG_SAFE_OFFLINE, &device->flags) &&
     !test_and_set_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {







  rc = fsync_bdev(device->block->bdev);
  if (rc != 0)
   goto interrupted;


  dasd_schedule_device_bh(device);
  rc = wait_event_interruptible(shutdown_waitq,
           _wait_for_empty_queues(device));
  if (rc != 0)
   goto interrupted;
 }

 set_bit(DASD_FLAG_OFFLINE, &device->flags);
 dasd_set_target_state(device, DASD_STATE_NEW);

 block = device->block;
 dasd_delete_device(device);




 if (block)
  dasd_free_block(block);
 return 0;

interrupted:

 clear_bit(DASD_FLAG_SAFE_OFFLINE, &device->flags);
 clear_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
 clear_bit(DASD_FLAG_OFFLINE, &device->flags);
 dasd_put_device(device);
 return rc;
}
