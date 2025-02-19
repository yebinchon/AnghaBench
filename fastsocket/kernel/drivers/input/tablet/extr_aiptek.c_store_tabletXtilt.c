
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {long xTilt; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef size_t ssize_t ;


 long AIPTEK_TILT_DISABLE ;
 long AIPTEK_TILT_MAX ;
 long AIPTEK_TILT_MIN ;
 size_t EINVAL ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static ssize_t
store_tabletXtilt(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 long x;

 if (strict_strtol(buf, 10, &x)) {
  size_t len = buf[count - 1] == '\n' ? count - 1 : count;

  if (strncmp(buf, "disable", len))
   return -EINVAL;

  aiptek->newSetting.xTilt = AIPTEK_TILT_DISABLE;
 } else {
  if (x < AIPTEK_TILT_MIN || x > AIPTEK_TILT_MAX)
   return -EINVAL;

  aiptek->newSetting.xTilt = x;
 }

 return count;
}
