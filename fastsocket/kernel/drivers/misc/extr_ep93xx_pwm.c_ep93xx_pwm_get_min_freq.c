
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ep93xx_pwm {int clk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EP93XX_PWM_MAX_COUNT ;
 unsigned long clk_get_rate (int ) ;
 struct ep93xx_pwm* platform_get_drvdata (struct platform_device*) ;
 int sprintf (char*,char*,unsigned long) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t ep93xx_pwm_get_min_freq(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct ep93xx_pwm *pwm = platform_get_drvdata(pdev);
 unsigned long rate = clk_get_rate(pwm->clk);

 return sprintf(buf, "%ld\n", rate / (EP93XX_PWM_MAX_COUNT + 1));
}
