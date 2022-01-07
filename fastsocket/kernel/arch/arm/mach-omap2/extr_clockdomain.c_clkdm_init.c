
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;
struct clkdm_pwrdm_autodep {TYPE_1__ pwrdm; } ;


 int _autodep_lookup (struct clkdm_pwrdm_autodep*) ;
 struct clkdm_pwrdm_autodep* autodeps ;
 int clkdm_register (struct clockdomain*) ;

void clkdm_init(struct clockdomain **clkdms,
  struct clkdm_pwrdm_autodep *init_autodeps)
{
 struct clockdomain **c = ((void*)0);
 struct clkdm_pwrdm_autodep *autodep = ((void*)0);

 if (clkdms)
  for (c = clkdms; *c; c++)
   clkdm_register(*c);

 autodeps = init_autodeps;
 if (autodeps)
  for (autodep = autodeps; autodep->pwrdm.ptr; autodep++)
   _autodep_lookup(autodep);
}
