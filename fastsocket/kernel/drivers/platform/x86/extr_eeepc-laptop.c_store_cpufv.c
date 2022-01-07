
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeepc_cpufv {int num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ cpufv_disabled; } ;


 int CM_ASL_CPUFV ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 TYPE_1__* ehotk ;
 scalar_t__ get_cpufv (struct eeepc_cpufv*) ;
 int parse_arg (char const*,size_t,int*) ;
 int set_acpi (int ,int) ;

__attribute__((used)) static ssize_t store_cpufv(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct eeepc_cpufv c;
 int rv, value;

 if (ehotk->cpufv_disabled)
  return -EPERM;
 if (get_cpufv(&c))
  return -ENODEV;
 rv = parse_arg(buf, count, &value);
 if (rv < 0)
  return rv;
 if (!rv || value < 0 || value >= c.num)
  return -EINVAL;
 set_acpi(CM_ASL_CPUFV, value);
 return rv;
}
