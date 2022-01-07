
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int HZ ;
 int blk_queue_rq_timeout (int ,int) ;
 int sscanf (char const*,char*,int*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_store_timeout (struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_device *sdev;
 int timeout;
 sdev = to_scsi_device(dev);
 sscanf (buf, "%d\n", &timeout);
 blk_queue_rq_timeout(sdev->request_queue, timeout * HZ);
 return count;
}
