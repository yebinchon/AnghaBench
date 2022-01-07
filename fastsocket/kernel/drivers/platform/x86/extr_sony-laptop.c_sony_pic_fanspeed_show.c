
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 scalar_t__ sony_pic_get_fanspeed (int*) ;

__attribute__((used)) static ssize_t sony_pic_fanspeed_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 u8 value = 0;
 if (sony_pic_get_fanspeed(&value))
  return -EIO;

 return snprintf(buffer, PAGE_SIZE, "%d\n", value);
}
