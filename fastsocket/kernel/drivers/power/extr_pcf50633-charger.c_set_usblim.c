
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_mbc {int pcf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct pcf50633_mbc* dev_get_drvdata (struct device*) ;
 int pcf50633_mbc_usb_curlim_set (int ,unsigned long) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t set_usblim(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct pcf50633_mbc *mbc = dev_get_drvdata(dev);
 unsigned long ma;
 int ret;

 ret = strict_strtoul(buf, 10, &ma);
 if (ret)
  return -EINVAL;

 pcf50633_mbc_usb_curlim_set(mbc->pcf, ma);

 return count;
}
