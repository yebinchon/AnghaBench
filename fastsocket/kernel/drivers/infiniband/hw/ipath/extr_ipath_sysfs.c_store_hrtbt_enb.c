
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int (* ipath_f_set_ib_cfg ) (struct ipath_devdata*,int ,int) ;int ipath_flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int IPATH_IB_CFG_HRTBT ;
 int IPATH_IB_HRTBT_OFF ;
 int IPATH_NO_HRTBT ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_parse_ushort (char const*,int*) ;
 int stub1 (struct ipath_devdata*,int ,int) ;

__attribute__((used)) static ssize_t store_hrtbt_enb(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int ret, r;
 u16 val;

 ret = ipath_parse_ushort(buf, &val);
 if (ret >= 0 && val > 3)
  ret = -EINVAL;
 if (ret < 0) {
  ipath_dev_err(dd, "attempt to set invalid Heartbeat enable\n");
  goto bail;
 }
 r = dd->ipath_f_set_ib_cfg(dd, IPATH_IB_CFG_HRTBT, val);
 if (r < 0)
  ret = r;
 else if (val == IPATH_IB_HRTBT_OFF)
  dd->ipath_flags |= IPATH_NO_HRTBT;
 else
  dd->ipath_flags &= ~IPATH_NO_HRTBT;

bail:
 return ret;
}
