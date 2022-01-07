
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct work_struct {int dummy; } ;
struct lm8323_pwm {scalar_t__ desired_brightness; scalar_t__ brightness; int fade_time; int lock; scalar_t__ running; } ;


 int PWM_RAMP (int,int,int,int) ;
 int abs (scalar_t__) ;
 int lm8323_write_pwm (struct lm8323_pwm*,int,int,int *) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lm8323_pwm* work_to_pwm (struct work_struct*) ;

__attribute__((used)) static void lm8323_pwm_work(struct work_struct *work)
{
 struct lm8323_pwm *pwm = work_to_pwm(work);
 int div512, perstep, steps, hz, up, kill;
 u16 pwm_cmds[3];
 int num_cmds = 0;

 mutex_lock(&pwm->lock);







 if (pwm->running || pwm->desired_brightness == pwm->brightness)
  goto out;

 kill = (pwm->desired_brightness == 0);
 up = (pwm->desired_brightness > pwm->brightness);
 steps = abs(pwm->desired_brightness - pwm->brightness);





 if ((pwm->fade_time / steps) > (32768 / 512)) {
  div512 = 1;
  hz = 32768 / 512;
 } else {
  div512 = 0;
  hz = 32768 / 16;
 }

 perstep = (hz * pwm->fade_time) / (steps * 1000);

 if (perstep == 0)
  perstep = 1;
 else if (perstep > 63)
  perstep = 63;

 while (steps) {
  int s;

  s = min(126, steps);
  pwm_cmds[num_cmds++] = PWM_RAMP(div512, perstep, s, up);
  steps -= s;
 }

 lm8323_write_pwm(pwm, kill, num_cmds, pwm_cmds);
 pwm->brightness = pwm->desired_brightness;

 out:
 mutex_unlock(&pwm->lock);
}
