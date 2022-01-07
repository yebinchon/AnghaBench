
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;


 int omap2_clkdm_allow_idle (struct clockdomain*) ;

__attribute__((used)) static int _pm_clkdm_enable_hwsup(struct clockdomain *clkdm, void *unused)
{
 omap2_clkdm_allow_idle(clkdm);
 return 0;
}
