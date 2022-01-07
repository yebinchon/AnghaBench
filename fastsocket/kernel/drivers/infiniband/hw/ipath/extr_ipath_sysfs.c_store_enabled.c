
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ipath_devdata {int ipath_flags; int * ipath_statusp; int ipath_unit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int IPATH_DISABLED ;
 int IPATH_STATUS_ADMIN_DISABLED ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*,...) ;
 scalar_t__ ipath_init_chip (struct ipath_devdata*,int) ;
 scalar_t__ ipath_parse_ushort (char const*,scalar_t__*) ;
 int ipath_shutdown_device (struct ipath_devdata*) ;

__attribute__((used)) static ssize_t store_enabled(struct device *dev,
    struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 ssize_t ret;
 u16 enable = 0;

 ret = ipath_parse_ushort(buf, &enable);
 if (ret < 0) {
  ipath_dev_err(dd, "attempt to use non-numeric on enable\n");
  goto bail;
 }

 if (enable) {
  if (!(dd->ipath_flags & IPATH_DISABLED))
   goto bail;

  dev_info(dev, "Enabling unit %d\n", dd->ipath_unit);

  ret = ipath_init_chip(dd, 1);
  if (ret)
   ipath_dev_err(dd, "Failed to enable unit %d\n",
          dd->ipath_unit);
  else {
   dd->ipath_flags &= ~IPATH_DISABLED;
   *dd->ipath_statusp &= ~IPATH_STATUS_ADMIN_DISABLED;
  }
 }
 else if (!(dd->ipath_flags & IPATH_DISABLED)) {
  dev_info(dev, "Disabling unit %d\n", dd->ipath_unit);
  ipath_shutdown_device(dd);
  dd->ipath_flags |= IPATH_DISABLED;
  *dd->ipath_statusp |= IPATH_STATUS_ADMIN_DISABLED;
 }

bail:
 return ret;
}
