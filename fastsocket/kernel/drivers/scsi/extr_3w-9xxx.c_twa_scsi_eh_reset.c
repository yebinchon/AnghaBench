
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int * cmnd; TYPE_4__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {int ioctl_lock; int host; int num_resets; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int FAILED ;
 int KERN_WARNING ;
 int SUCCESS ;
 int TW_DRIVER ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdev_printk (int ,TYPE_4__*,char*,int ,int,int ) ;
 scalar_t__ twa_reset_device_extension (TYPE_2__*) ;

__attribute__((used)) static int twa_scsi_eh_reset(struct scsi_cmnd *SCpnt)
{
 TW_Device_Extension *tw_dev = ((void*)0);
 int retval = FAILED;

 tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;

 tw_dev->num_resets++;

 sdev_printk(KERN_WARNING, SCpnt->device,
  "WARNING: (0x%02X:0x%04X): Command (0x%x) timed out, resetting card.\n",
  TW_DRIVER, 0x2c, SCpnt->cmnd[0]);


 mutex_lock(&tw_dev->ioctl_lock);


 if (twa_reset_device_extension(tw_dev)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0x2b, "Controller reset failed during scsi host reset");
  goto out;
 }

 retval = SUCCESS;
out:
 mutex_unlock(&tw_dev->ioctl_lock);
 return retval;
}
