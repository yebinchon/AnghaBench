
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {int minor; } ;


 int EINVAL ;
 int GPIO_MINOR_PWM0 ;



 int _IOC_NR (unsigned int) ;
 int gpio_pwm_set_duty (unsigned long,int) ;
 int gpio_pwm_set_mode (unsigned long,int) ;
 int gpio_pwm_set_period (unsigned long,int) ;

__attribute__((used)) static int gpio_pwm_ioctl(struct gpio_private *priv, unsigned int cmd,
 unsigned long arg)
{
 int pwm_port = priv->minor - GPIO_MINOR_PWM0;

 switch (_IOC_NR(cmd)) {
 case 129:
  return gpio_pwm_set_mode(arg, pwm_port);
 case 128:
  return gpio_pwm_set_period(arg, pwm_port);
 case 130:
  return gpio_pwm_set_duty(arg, pwm_port);
 default:
  return -EINVAL;
 }
 return 0;
}
