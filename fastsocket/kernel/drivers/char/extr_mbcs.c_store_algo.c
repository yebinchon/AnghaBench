
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbcs_soft {int algo_done; int algo_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
typedef size_t ssize_t ;


 size_t ERESTARTSYS ;
 int atomic_read (int *) ;
 int mbcs_algo_start (struct mbcs_soft*) ;
 int simple_strtoul (char const*,int *,int ) ;
 struct cx_dev* to_cx_dev (struct device*) ;
 scalar_t__ wait_event_interruptible (int ,int ) ;

__attribute__((used)) static ssize_t store_algo(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 int n;
 struct cx_dev *cx_dev = to_cx_dev(dev);
 struct mbcs_soft *soft = cx_dev->soft;

 if (count <= 0)
  return 0;

 n = simple_strtoul(buf, ((void*)0), 0);

 if (n == 1) {
  mbcs_algo_start(soft);
  if (wait_event_interruptible(soft->algo_queue,
     atomic_read(&soft->algo_done)))
   return -ERESTARTSYS;
 }

 return count;
}
