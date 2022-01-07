
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 int PAGE_SIZE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int ipath_tempsense_read (struct ipath_devdata*,int) ;
 int scnprintf (char*,int ,char*,char,char,int,int,char,char) ;

__attribute__((used)) static ssize_t show_tempsense(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int ret;
 int idx;
 u8 regvals[8];

 ret = -ENXIO;
 for (idx = 0; idx < 8; ++idx) {
  if (idx == 6)
   continue;
  ret = ipath_tempsense_read(dd, idx);
  if (ret < 0)
   break;
  regvals[idx] = ret;
 }
 if (idx == 8)
  ret = scnprintf(buf, PAGE_SIZE, "%d %d %02X %02X %d %d\n",
   *(signed char *)(regvals),
   *(signed char *)(regvals + 1),
   regvals[2], regvals[3],
   *(signed char *)(regvals + 5),
   *(signed char *)(regvals + 7));
 return ret;
}
