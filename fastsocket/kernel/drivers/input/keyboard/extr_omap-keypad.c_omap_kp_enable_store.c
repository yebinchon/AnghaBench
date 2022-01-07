
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int INT_KEYBOARD ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int kp_enable ;
 int kp_enable_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int*) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t omap_kp_enable_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 int state;

 if (sscanf(buf, "%u", &state) != 1)
  return -EINVAL;

 if ((state != 1) && (state != 0))
  return -EINVAL;

 mutex_lock(&kp_enable_mutex);
 if (state != kp_enable) {
  if (state)
   enable_irq(INT_KEYBOARD);
  else
   disable_irq(INT_KEYBOARD);
  kp_enable = state;
 }
 mutex_unlock(&kp_enable_mutex);

 return strnlen(buf, count);
}
