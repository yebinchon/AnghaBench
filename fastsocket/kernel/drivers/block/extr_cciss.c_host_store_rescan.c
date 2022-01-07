
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int scan_wait; } ;
typedef size_t ssize_t ;


 int add_to_scan_list (struct ctlr_info*) ;
 int cciss_scan_thread ;
 struct ctlr_info* to_hba (struct device*) ;
 int wait_for_completion_interruptible (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static ssize_t host_store_rescan(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct ctlr_info *h = to_hba(dev);

 add_to_scan_list(h);
 wake_up_process(cciss_scan_thread);
 wait_for_completion_interruptible(&h->scan_wait);

 return count;
}
