
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int state; int * debug_area; scalar_t__ debugfs_dentry; int profile; TYPE_1__* block; } ;
struct TYPE_3__ {scalar_t__ debugfs_dentry; int profile; } ;


 int DASD_STATE_KNOWN ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,struct dasd_device*) ;
 int DBF_EMERG ;
 int dasd_block_clear_timer (TYPE_1__*) ;
 int dasd_device_clear_timer (struct dasd_device*) ;
 int dasd_flush_device_queue (struct dasd_device*) ;
 int dasd_gendisk_free (TYPE_1__*) ;
 int dasd_profile_exit (int *) ;
 int debug_unregister (int *) ;
 int debugfs_remove (scalar_t__) ;

__attribute__((used)) static int dasd_state_basic_to_known(struct dasd_device *device)
{
 int rc;
 if (device->block) {
  dasd_profile_exit(&device->block->profile);
  if (device->block->debugfs_dentry)
   debugfs_remove(device->block->debugfs_dentry);
  dasd_gendisk_free(device->block);
  dasd_block_clear_timer(device->block);
 }
 rc = dasd_flush_device_queue(device);
 if (rc)
  return rc;
 dasd_device_clear_timer(device);
 dasd_profile_exit(&device->profile);
 if (device->debugfs_dentry)
  debugfs_remove(device->debugfs_dentry);

 DBF_DEV_EVENT(DBF_EMERG, device, "%p debug area deleted", device);
 if (device->debug_area != ((void*)0)) {
  debug_unregister(device->debug_area);
  device->debug_area = ((void*)0);
 }
 device->state = DASD_STATE_KNOWN;
 return 0;
}
