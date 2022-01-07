
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int do_sas_phy_reset (struct device*,size_t,int ) ;

__attribute__((used)) static ssize_t
store_sas_link_reset(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 return do_sas_phy_reset(dev, count, 0);
}
