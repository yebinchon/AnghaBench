
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_pwm {int fade_time; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm8323_pwm* cdev_to_pwm (struct led_classdev*) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t lm8323_pwm_show_time(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm8323_pwm *pwm = cdev_to_pwm(led_cdev);

 return sprintf(buf, "%d\n", pwm->fade_time);
}
