
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int (* ipath_f_get_ib_cfg ) (struct ipath_devdata*,int ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPATH_IB_CFG_RXPOL_ENB ;
 int PAGE_SIZE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int) ;
 int stub1 (struct ipath_devdata*,int ) ;

__attribute__((used)) static ssize_t show_rx_polinv_enb(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int ret;

 ret = dd->ipath_f_get_ib_cfg(dd, IPATH_IB_CFG_RXPOL_ENB);
 if (ret >= 0)
  ret = scnprintf(buf, PAGE_SIZE, "%d\n", ret);
 return ret;
}
