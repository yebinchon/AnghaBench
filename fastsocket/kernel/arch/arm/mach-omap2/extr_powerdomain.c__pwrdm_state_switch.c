
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int state; int * state_counter; } ;


 int EINVAL ;


 int pm_dbg_update_time (struct powerdomain*,int) ;
 int pwrdm_read_prev_pwrst (struct powerdomain*) ;
 int pwrdm_read_pwrst (struct powerdomain*) ;

__attribute__((used)) static int _pwrdm_state_switch(struct powerdomain *pwrdm, int flag)
{

 int prev;
 int state;

 if (pwrdm == ((void*)0))
  return -EINVAL;

 state = pwrdm_read_pwrst(pwrdm);

 switch (flag) {
 case 129:
  prev = pwrdm->state;
  break;
 case 128:
  prev = pwrdm_read_prev_pwrst(pwrdm);
  if (pwrdm->state != prev)
   pwrdm->state_counter[prev]++;
  break;
 default:
  return -EINVAL;
 }

 if (state != prev)
  pwrdm->state_counter[state]++;

 pm_dbg_update_time(pwrdm, prev);

 pwrdm->state = state;

 return 0;
}
