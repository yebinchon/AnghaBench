
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ipath_devdata {int ipath_lmc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ IPATH_MULTICAST_LID_BASE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*,scalar_t__) ;
 int ipath_parse_ushort (char const*,scalar_t__*) ;
 int ipath_set_lid (struct ipath_devdata*,scalar_t__,int ) ;

__attribute__((used)) static ssize_t store_lid(struct device *dev,
    struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 u16 lid = 0;
 int ret;

 ret = ipath_parse_ushort(buf, &lid);
 if (ret < 0)
  goto invalid;

 if (lid == 0 || lid >= IPATH_MULTICAST_LID_BASE) {
  ret = -EINVAL;
  goto invalid;
 }

 ipath_set_lid(dd, lid, dd->ipath_lmc);

 goto bail;
invalid:
 ipath_dev_err(dd, "attempt to set invalid LID 0x%x\n", lid);
bail:
 return ret;
}
