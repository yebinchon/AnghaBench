
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int ATO; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
sd_show_app_tag_own(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);

 return snprintf(buf, 20, "%u\n", sdkp->ATO);
}
