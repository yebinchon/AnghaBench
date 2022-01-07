
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pwrdm_pre_transition_cb ;
 int pwrdm_for_each (int ,int *) ;

int pwrdm_pre_transition(void)
{
 pwrdm_for_each(_pwrdm_pre_transition_cb, ((void*)0));
 return 0;
}
