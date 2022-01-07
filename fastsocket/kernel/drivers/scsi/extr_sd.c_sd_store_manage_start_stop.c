
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {int manage_start_stop; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 int capable (int ) ;
 int simple_strtoul (char const*,int *,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
sd_store_manage_start_stop(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 sdp->manage_start_stop = simple_strtoul(buf, ((void*)0), 10);

 return count;
}
