
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;


 int EINVAL ;
 int pwrdm_state_switch (int *) ;
 int pwrdm_wait_transition (int *) ;

int pwrdm_clkdm_state_switch(struct clockdomain *clkdm)
{
 if (clkdm != ((void*)0) && clkdm->pwrdm.ptr != ((void*)0)) {
  pwrdm_wait_transition(clkdm->pwrdm.ptr);
  return pwrdm_state_switch(clkdm->pwrdm.ptr);
 }

 return -EINVAL;
}
