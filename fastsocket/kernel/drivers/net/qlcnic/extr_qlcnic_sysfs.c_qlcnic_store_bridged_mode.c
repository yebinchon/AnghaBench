
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int state; TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int capabilities; } ;


 int EINVAL ;
 int QLCNIC_FW_CAPABILITY_BDG ;
 int __QLCNIC_DEV_UP ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int qlcnic_config_bridged_mode (struct qlcnic_adapter*,int) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t qlcnic_store_bridged_mode(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);
 unsigned long new;
 int ret = -EINVAL;

 if (!(adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_BDG))
  goto err_out;

 if (!test_bit(__QLCNIC_DEV_UP, &adapter->state))
  goto err_out;

 if (strict_strtoul(buf, 2, &new))
  goto err_out;

 if (!qlcnic_config_bridged_mode(adapter, !!new))
  ret = len;

err_out:
 return ret;
}
