
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int __QLCNIC_ELB_INPROGRESS ;
 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t qlcnic_show_elb_mode(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);

 if (test_bit(__QLCNIC_ELB_INPROGRESS, &adapter->state))
  return sprintf(buf, "1\n");

 return sprintf(buf, "0\n");
}
