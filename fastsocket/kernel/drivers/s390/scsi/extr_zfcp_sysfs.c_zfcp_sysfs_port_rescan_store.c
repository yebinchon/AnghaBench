
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; int work_queue; int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int atomic_read (int *) ;
 struct zfcp_adapter* dev_get_drvdata (struct device*) ;
 int flush_work (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static ssize_t zfcp_sysfs_port_rescan_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct zfcp_adapter *adapter = dev_get_drvdata(dev);

 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_REMOVE)
  return -EBUSY;


 queue_work(adapter->work_queue, &adapter->scan_work);
 flush_work(&adapter->scan_work);

 return (ssize_t) count;
}
