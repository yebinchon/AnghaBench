
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int lis3lv02d_calibrate_joystick () ;

__attribute__((used)) static ssize_t lis3lv02d_calibrate_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 lis3lv02d_calibrate_joystick();
 return count;
}
