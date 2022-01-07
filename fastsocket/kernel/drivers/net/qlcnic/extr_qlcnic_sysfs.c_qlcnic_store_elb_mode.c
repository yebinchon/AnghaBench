
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; int netdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int QLCNIC_ELB_MODE ;
 int __QLCNIC_ELB_INPROGRESS ;
 int clear_bit (int ,int *) ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int qlcnic_loopback_test (int ,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 unsigned long test_and_set_bit (int ,int *) ;

__attribute__((used)) static ssize_t qlcnic_store_elb_mode(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t len)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);
 unsigned long new;
 int err;

 if (strict_strtoul(buf, 2, &new))
  return -EINVAL;

 if (new == test_and_set_bit(__QLCNIC_ELB_INPROGRESS, &adapter->state))
  return len;

 rtnl_lock();
 err = qlcnic_loopback_test(adapter->netdev, QLCNIC_ELB_MODE);
 rtnl_unlock();

 clear_bit(__QLCNIC_ELB_INPROGRESS, &adapter->state);

 if (!err)
  err = len;

 return err;
}
