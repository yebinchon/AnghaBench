
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int max_brightness; } ;


 int EINVAL ;
 TYPE_1__* fujitsu ;
 int get_lcd_level () ;
 int set_lcd_level (int) ;
 int set_lcd_level_alt (int) ;
 int sscanf (char const*,char*,int*) ;
 scalar_t__ use_alt_lcd_levels ;

__attribute__((used)) static ssize_t store_lcd_level(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{

 int level, ret;

 if (sscanf(buf, "%i", &level) != 1
     || (level < 0 || level >= fujitsu->max_brightness))
  return -EINVAL;

 if (use_alt_lcd_levels)
  ret = set_lcd_level_alt(level);
 else
  ret = set_lcd_level(level);
 if (ret < 0)
  return ret;

 ret = get_lcd_level();
 if (ret < 0)
  return ret;

 return count;
}
