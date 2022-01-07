
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 int PWRDM_STATE_NOW ;
 int _pwrdm_state_switch (struct powerdomain*,int ) ;

int pwrdm_state_switch(struct powerdomain *pwrdm)
{
 return _pwrdm_state_switch(pwrdm, PWRDM_STATE_NOW);
}
