
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ simple_tags; scalar_t__ ordered_tags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,char const*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
show_queue_type_field(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 const char *name = "none";

 if (sdev->ordered_tags)
  name = "ordered";
 else if (sdev->simple_tags)
  name = "simple";

 return snprintf(buf, 20, "%s\n", name);
}
