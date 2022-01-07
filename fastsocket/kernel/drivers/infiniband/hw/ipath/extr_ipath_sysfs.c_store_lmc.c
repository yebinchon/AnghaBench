
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int ipath_lid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int) ;
 int ipath_parse_ushort (char const*,int*) ;
 int ipath_set_lid (struct ipath_devdata*,int ,int) ;

__attribute__((used)) static ssize_t store_lmc(struct device *dev,
    struct device_attribute *attr,
    const char *buf,
    size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 u16 lmc = 0;
 int ret;

 ret = ipath_parse_ushort(buf, &lmc);
 if (ret < 0)
  goto invalid;

 if (lmc > 7) {
  ret = -EINVAL;
  goto invalid;
 }

 ipath_set_lid(dd, dd->ipath_lid, lmc);

 goto bail;
invalid:
 ipath_dev_err(dd, "attempt to set invalid LMC %u\n", lmc);
bail:
 return ret;
}
