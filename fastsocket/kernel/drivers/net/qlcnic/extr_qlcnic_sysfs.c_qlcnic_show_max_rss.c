
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int max_sds_rings; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct qlcnic_adapter* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qlcnic_show_max_rss(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct qlcnic_adapter *adapter = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", adapter->max_sds_rings);
}
