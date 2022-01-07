
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 int _pwrdm_setup (struct powerdomain*) ;
 int pwrdm_register (struct powerdomain*) ;

void pwrdm_init(struct powerdomain **pwrdm_list)
{
 struct powerdomain **p = ((void*)0);

 if (pwrdm_list) {
  for (p = pwrdm_list; *p; p++) {
   pwrdm_register(*p);
   _pwrdm_setup(*p);
  }
 }
}
