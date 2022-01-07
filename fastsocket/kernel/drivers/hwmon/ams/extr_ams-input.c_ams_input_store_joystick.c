
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ams_input_disable () ;
 int ams_input_enable () ;
 int ams_input_mutex ;
 unsigned long joystick ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t ams_input_store_joystick(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long enable;
 int error = 0;

 if (strict_strtoul(buf, 0, &enable) || enable > 1)
  return -EINVAL;

 mutex_lock(&ams_input_mutex);

 if (enable != joystick) {
  if (enable)
   error = ams_input_enable();
  else
   ams_input_disable();
 }

 mutex_unlock(&ams_input_mutex);

 return error ? error : count;
}
