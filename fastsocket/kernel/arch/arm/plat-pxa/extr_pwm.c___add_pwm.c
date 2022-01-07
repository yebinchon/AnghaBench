
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int node; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_list ;
 int pwm_lock ;

__attribute__((used)) static inline void __add_pwm(struct pwm_device *pwm)
{
 mutex_lock(&pwm_lock);
 list_add_tail(&pwm->node, &pwm_list);
 mutex_unlock(&pwm_lock);
}
