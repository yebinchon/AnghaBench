
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NCR_700_get_depth (struct scsi_device*) ;
 int snprintf (char*,int,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
NCR_700_show_active_tags(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *SDp = to_scsi_device(dev);

 return snprintf(buf, 20, "%d\n", NCR_700_get_depth(SDp));
}
