
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_ramp_up_period; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int jiffies_to_msecs (int ) ;
 int snprintf (char*,int,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_show_queue_ramp_up_period(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct scsi_device *sdev;
 sdev = to_scsi_device(dev);
 return snprintf(buf, 20, "%u\n",
   jiffies_to_msecs(sdev->queue_ramp_up_period));
}
