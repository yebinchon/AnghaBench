
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int allow_restart; } ;


 int snprintf (char*,int,char*,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
sd_show_allow_restart(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);

 return snprintf(buf, 40, "%d\n", sdkp->device->allow_restart);
}
