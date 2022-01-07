
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int duty_ns; int period_ns; int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_list ;
 int pwm_lock ;

__attribute__((used)) static int pwm_register(struct pwm_device *pwm)
{
 pwm->duty_ns = -1;
 pwm->period_ns = -1;

 mutex_lock(&pwm_lock);
 list_add_tail(&pwm->list, &pwm_list);
 mutex_unlock(&pwm_lock);

 return 0;
}
