
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int ipath_jint_max_packets; int (* ipath_f_config_jint ) (struct ipath_devdata*,int ,int ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_parse_ushort (char const*,int *) ;
 int stub1 (struct ipath_devdata*,int ,int ) ;

__attribute__((used)) static ssize_t store_jint_idle_ticks(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 u16 v = 0;
 int ret;

 ret = ipath_parse_ushort(buf, &v);
 if (ret < 0)
  ipath_dev_err(dd, "invalid jint_idle_ticks.\n");
 else
  dd->ipath_f_config_jint(dd, v, dd->ipath_jint_max_packets);

 return ret;
}
