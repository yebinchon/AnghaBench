
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* request_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int rq_timeout; } ;


 int HZ ;
 int snprintf (char*,int,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_show_timeout (struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev;
 sdev = to_scsi_device(dev);
 return snprintf(buf, 20, "%d\n", sdev->request_queue->rq_timeout / HZ);
}
