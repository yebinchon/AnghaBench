
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int * label; scalar_t__ use_count; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warning (char*) ;
 int pwm_lock ;

void pwm_free(struct pwm_device *pwm)
{
 mutex_lock(&pwm_lock);

 if (pwm->use_count) {
  pwm->use_count--;
  pwm->label = ((void*)0);
 } else
  pr_warning("PWM device already freed\n");

 mutex_unlock(&pwm_lock);
}
