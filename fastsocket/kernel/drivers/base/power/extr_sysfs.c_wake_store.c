
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int device_can_wakeup (struct device*) ;
 int device_set_wakeup_enable (struct device*,int) ;
 int disabled ;
 int enabled ;
 char* memchr (char const*,char,size_t) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static ssize_t
wake_store(struct device * dev, struct device_attribute *attr,
 const char * buf, size_t n)
{
 char *cp;
 int len = n;

 if (!device_can_wakeup(dev))
  return -EINVAL;

 cp = memchr(buf, '\n', n);
 if (cp)
  len = cp - buf;
 if (len == sizeof enabled - 1
   && strncmp(buf, enabled, sizeof enabled - 1) == 0)
  device_set_wakeup_enable(dev, 1);
 else if (len == sizeof disabled - 1
   && strncmp(buf, disabled, sizeof disabled - 1) == 0)
  device_set_wakeup_enable(dev, 0);
 else
  return -EINVAL;
 return n;
}
