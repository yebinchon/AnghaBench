
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mouseButtonRight; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef size_t ssize_t ;


 int AIPTEK_INVALID_VALUE ;
 size_t EINVAL ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int map_str_to_val (int ,char const*,size_t) ;
 int mouse_button_map ;

__attribute__((used)) static ssize_t
store_tabletMouseRight(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 int new_button = map_str_to_val(mouse_button_map, buf, count);

 if (new_button == AIPTEK_INVALID_VALUE)
  return -EINVAL;

 aiptek->newSetting.mouseButtonRight = new_button;
 return count;
}
