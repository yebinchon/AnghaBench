
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 scalar_t__ sony_pic_set_fanspeed (unsigned long) ;

__attribute__((used)) static ssize_t sony_pic_fanspeed_store(struct device *dev,
  struct device_attribute *attr,
  const char *buffer, size_t count)
{
 unsigned long value;
 if (count > 31)
  return -EINVAL;

 value = simple_strtoul(buffer, ((void*)0), 10);
 if (sony_pic_set_fanspeed(value))
  return -EIO;

 return count;
}
