
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int SK_UNUSED (struct s_smc*) ;

void sm_pm_ls_latch(struct s_smc *smc, int phy, int on_off)

{
 SK_UNUSED(smc) ;

 phy = phy ; on_off = on_off ;
}
