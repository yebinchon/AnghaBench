
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aiptek_settings {int dummy; } ;
struct aiptek {int newSetting; int curSetting; } ;
typedef size_t ssize_t ;


 size_t EIO ;
 scalar_t__ aiptek_program_tablet (struct aiptek*) ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static ssize_t
store_tabletExecute(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);




 memcpy(&aiptek->curSetting, &aiptek->newSetting,
        sizeof(struct aiptek_settings));

 if (aiptek_program_tablet(aiptek) < 0)
  return -EIO;

 return count;
}
