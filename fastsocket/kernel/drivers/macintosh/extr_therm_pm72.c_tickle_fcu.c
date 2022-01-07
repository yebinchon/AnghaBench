
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*,int) ;
 int SLOTS_FAN_DEFAULT_PWM ;
 int SLOTS_FAN_PWM_INDEX ;
 int SLOTS_PID_OUTPUT_MIN ;
 int get_pwm_fan (int ) ;
 int rackmac ;
 int set_pwm_fan (int ,int) ;

__attribute__((used)) static void tickle_fcu(void)
{
 int pwm;

 pwm = get_pwm_fan(SLOTS_FAN_PWM_INDEX);

 DBG("FCU Tickle, slots fan is: %d\n", pwm);
 if (pwm < 0)
  pwm = 100;

 if (!rackmac) {
  pwm = SLOTS_FAN_DEFAULT_PWM;
 } else if (pwm < SLOTS_PID_OUTPUT_MIN)
  pwm = SLOTS_PID_OUTPUT_MIN;


 set_pwm_fan(SLOTS_FAN_PWM_INDEX, pwm);
}
