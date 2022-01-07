
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_pwm {int running; scalar_t__ desired_brightness; scalar_t__ brightness; int lock; int work; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pwm_done(struct lm8323_pwm *pwm)
{
 mutex_lock(&pwm->lock);
 pwm->running = 0;
 if (pwm->desired_brightness != pwm->brightness)
  schedule_work(&pwm->work);
 mutex_unlock(&pwm->lock);
}
