
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int manage_start_stop; } ;


 int KERN_NOTICE ;
 struct scsi_disk* scsi_disk_get_from_dev (struct device*) ;
 int scsi_disk_put (struct scsi_disk*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_start_stop_device (struct scsi_disk*,int) ;

__attribute__((used)) static int sd_resume(struct device *dev)
{
 struct scsi_disk *sdkp = scsi_disk_get_from_dev(dev);
 int ret = 0;

 if (!sdkp->device->manage_start_stop)
  goto done;

 sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
 ret = sd_start_stop_device(sdkp, 1);

done:
 scsi_disk_put(sdkp);
 return ret;
}
