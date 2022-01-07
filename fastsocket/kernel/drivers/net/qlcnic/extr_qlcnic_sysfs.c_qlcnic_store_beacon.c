
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ op_mode; } ;


 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_store_beacon (struct qlcnic_adapter*,char const*,size_t) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_store_beacon (struct qlcnic_adapter*,char const*,size_t) ;

__attribute__((used)) static ssize_t qlcnic_store_beacon(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);
 int err = 0;

 if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
  dev_warn(dev,
    "LED test not supported in non privileged mode\n");
  return -EOPNOTSUPP;
 }

 if (qlcnic_82xx_check(adapter))
  err = qlcnic_82xx_store_beacon(adapter, buf, len);
 else if (qlcnic_83xx_check(adapter))
  err = qlcnic_83xx_store_beacon(adapter, buf, len);
 else
  return -EIO;

 return err;
}
