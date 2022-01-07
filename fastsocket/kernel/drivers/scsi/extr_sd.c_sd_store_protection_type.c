
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {unsigned int protection_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 unsigned int SD_DIF_TYPE3_PROTECTION ;
 int capable (int ) ;
 unsigned int simple_strtoul (char const*,int *,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
sd_store_protection_type(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 unsigned int val;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 val = simple_strtoul(buf, ((void*)0), 10);

 if (val >= 0 && val <= SD_DIF_TYPE3_PROTECTION)
  sdkp->protection_type = val;

 return count;
}
