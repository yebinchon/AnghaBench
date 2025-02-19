
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ep93xx_pwm {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ep93xx_pwm_invert (struct ep93xx_pwm*) ;
 int ep93xx_pwm_normal (struct ep93xx_pwm*) ;
 struct ep93xx_pwm* platform_get_drvdata (struct platform_device*) ;
 int strict_strtol (char const*,int,long*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t ep93xx_pwm_set_invert(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct ep93xx_pwm *pwm = platform_get_drvdata(pdev);
 long val;
 int err;

 err = strict_strtol(buf, 10, &val);
 if (err)
  return -EINVAL;

 if (val == 0)
  ep93xx_pwm_normal(pwm);
 else if (val == 1)
  ep93xx_pwm_invert(pwm);
 else
  return -EINVAL;

 return count;
}
