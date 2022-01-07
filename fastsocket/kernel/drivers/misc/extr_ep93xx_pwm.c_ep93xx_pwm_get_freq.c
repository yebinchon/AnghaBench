
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dummy; } ;
struct ep93xx_pwm {int clk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long clk_get_rate (int ) ;
 scalar_t__ ep93xx_pwm_is_enabled (struct ep93xx_pwm*) ;
 int ep93xx_pwm_read_tc (struct ep93xx_pwm*) ;
 struct ep93xx_pwm* platform_get_drvdata (struct platform_device*) ;
 int sprintf (char*,char*,...) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t ep93xx_pwm_get_freq(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct ep93xx_pwm *pwm = platform_get_drvdata(pdev);

 if (ep93xx_pwm_is_enabled(pwm)) {
  unsigned long rate = clk_get_rate(pwm->clk);
  u16 term = ep93xx_pwm_read_tc(pwm);

  return sprintf(buf, "%ld\n", rate / (term + 1));
 } else {
  return sprintf(buf, "disabled\n");
 }
}
