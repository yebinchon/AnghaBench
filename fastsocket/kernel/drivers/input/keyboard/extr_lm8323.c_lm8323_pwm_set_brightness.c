
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_pwm {int desired_brightness; int work; int lock; struct lm8323_chip* chip; } ;
struct lm8323_chip {int lock; int pm_suspend; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 struct lm8323_pwm* cdev_to_pwm (struct led_classdev*) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ likely (int) ;
 int lm8323_pwm_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void lm8323_pwm_set_brightness(struct led_classdev *led_cdev,
          enum led_brightness brightness)
{
 struct lm8323_pwm *pwm = cdev_to_pwm(led_cdev);
 struct lm8323_chip *lm = pwm->chip;

 mutex_lock(&pwm->lock);
 pwm->desired_brightness = brightness;
 mutex_unlock(&pwm->lock);

 if (in_interrupt()) {
  schedule_work(&pwm->work);
 } else {



  mutex_lock(&lm->lock);
  if (likely(!lm->pm_suspend))
   schedule_work(&pwm->work);
  else
   lm8323_pwm_work(&pwm->work);
  mutex_unlock(&lm->lock);
 }
}
