
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int (* ipath_f_set_ib_cfg ) (struct ipath_devdata*,int ,int) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int IPATH_IB_CFG_LREV_ENB ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_parse_ushort (char const*,int*) ;
 int stub1 (struct ipath_devdata*,int ,int) ;

__attribute__((used)) static ssize_t store_lanerev_enb(struct device *dev,
     struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int ret, r;
 u16 val;

 ret = ipath_parse_ushort(buf, &val);
 if (ret >= 0 && val > 1) {
  ret = -EINVAL;
  ipath_dev_err(dd,
   "attempt to set invalid Lane reversal (enable)\n");
  goto bail;
 }

 r = dd->ipath_f_set_ib_cfg(dd, IPATH_IB_CFG_LREV_ENB, val);
 if (r < 0)
  ret = r;

bail:
 return ret;
}
