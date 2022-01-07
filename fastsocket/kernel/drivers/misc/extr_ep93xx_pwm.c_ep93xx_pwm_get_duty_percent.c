
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ep93xx_pwm {int duty_percent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ep93xx_pwm* platform_get_drvdata (struct platform_device*) ;
 int sprintf (char*,char*,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t ep93xx_pwm_get_duty_percent(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct ep93xx_pwm *pwm = platform_get_drvdata(pdev);

 return sprintf(buf, "%d\n", pwm->duty_percent);
}
