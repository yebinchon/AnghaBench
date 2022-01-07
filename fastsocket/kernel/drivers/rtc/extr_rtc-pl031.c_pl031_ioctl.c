
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 int ENOIOCTLCMD ;


 scalar_t__ RTC_MIS ;
 int __raw_writel (int,scalar_t__) ;
 struct pl031_local* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int pl031_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);

 switch (cmd) {
 case 129:
  __raw_writel(1, ldata->base + RTC_MIS);
  return 0;
 case 128:
  __raw_writel(0, ldata->base + RTC_MIS);
  return 0;
 }

 return -ENOIOCTLCMD;
}
