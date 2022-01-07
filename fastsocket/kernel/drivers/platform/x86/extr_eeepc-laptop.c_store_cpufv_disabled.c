
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cpufv_disabled; } ;


 int EINVAL ;
 int EPERM ;
 TYPE_1__* ehotk ;
 int parse_arg (char const*,size_t,int*) ;
 int pr_warning (char*) ;

__attribute__((used)) static ssize_t store_cpufv_disabled(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int rv, value;

 rv = parse_arg(buf, count, &value);
 if (rv < 0)
  return rv;

 switch (value) {
 case 0:
  if (ehotk->cpufv_disabled)
   pr_warning("cpufv enabled (not officially supported "
    "on this model)\n");
  ehotk->cpufv_disabled = 0;
  return rv;
 case 1:
  return -EPERM;
 default:
  return -EINVAL;
 }
}
