
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 char* scsi_device_state_name (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
show_state_field(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 const char *name = scsi_device_state_name(sdev->sdev_state);

 if (!name)
  return -EINVAL;

 return snprintf(buf, 20, "%s\n", name);
}
