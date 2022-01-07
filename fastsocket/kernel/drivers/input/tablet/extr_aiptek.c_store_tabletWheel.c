
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int wheel; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 scalar_t__ strict_strtol (char const*,int,long*) ;

__attribute__((used)) static ssize_t
store_tabletWheel(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 long w;

 if (strict_strtol(buf, 10, &w)) return -EINVAL;

 aiptek->newSetting.wheel = (int)w;
 return count;
}
