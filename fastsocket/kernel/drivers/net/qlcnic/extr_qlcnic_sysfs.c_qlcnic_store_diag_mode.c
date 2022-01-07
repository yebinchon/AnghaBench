
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int QLCNIC_DIAG_ENABLED ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t qlcnic_store_diag_mode(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t len)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);
 unsigned long new;

 if (strict_strtoul(buf, 2, &new))
  return -EINVAL;

 if (!!new != !!(adapter->flags & QLCNIC_DIAG_ENABLED))
  adapter->flags ^= QLCNIC_DIAG_ENABLED;

 return len;
}
