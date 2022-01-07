
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ wheel; } ;
struct aiptek {TYPE_1__ curSetting; } ;
typedef int ssize_t ;


 scalar_t__ AIPTEK_WHEEL_DISABLE ;
 int PAGE_SIZE ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t show_tabletWheel(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);

 if (aiptek->curSetting.wheel == AIPTEK_WHEEL_DISABLE) {
  return snprintf(buf, PAGE_SIZE, "disable\n");
 } else {
  return snprintf(buf, PAGE_SIZE, "%d\n",
    aiptek->curSetting.wheel);
 }
}
