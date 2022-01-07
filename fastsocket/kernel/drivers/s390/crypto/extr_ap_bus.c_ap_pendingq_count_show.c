
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_device {int pendingq_count; int lock; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static ssize_t ap_pendingq_count_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 int rc;

 spin_lock_bh(&ap_dev->lock);
 rc = snprintf(buf, PAGE_SIZE, "%d\n", ap_dev->pendingq_count);
 spin_unlock_bh(&ap_dev->lock);
 return rc;
}
