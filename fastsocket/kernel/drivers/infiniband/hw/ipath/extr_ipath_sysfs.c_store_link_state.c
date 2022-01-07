
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_parse_ushort (char const*,int *) ;
 int ipath_set_linkstate (struct ipath_devdata*,int ) ;

__attribute__((used)) static ssize_t store_link_state(struct device *dev,
    struct device_attribute *attr,
     const char *buf,
     size_t count)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int ret, r;
 u16 state;

 ret = ipath_parse_ushort(buf, &state);
 if (ret < 0)
  goto invalid;

 r = ipath_set_linkstate(dd, state);
 if (r < 0) {
  ret = r;
  goto bail;
 }

 goto bail;
invalid:
 ipath_dev_err(dd, "attempt to set invalid link state\n");
bail:
 return ret;
}
