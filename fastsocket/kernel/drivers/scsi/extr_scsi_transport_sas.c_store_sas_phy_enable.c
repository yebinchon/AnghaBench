
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int do_sas_phy_enable (struct device*,size_t,int) ;

__attribute__((used)) static ssize_t
store_sas_phy_enable(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 if (count < 1)
  return -EINVAL;

 switch (buf[0]) {
 case '0':
  do_sas_phy_enable(dev, count, 0);
  break;
 case '1':
  do_sas_phy_enable(dev, count, 1);
  break;
 default:
  return -EINVAL;
 }

 return count;
}
