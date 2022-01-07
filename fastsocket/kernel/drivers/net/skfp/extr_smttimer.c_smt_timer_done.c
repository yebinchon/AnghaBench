
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int timer_done (struct s_smc*,int) ;

void smt_timer_done(struct s_smc *smc)
{
 timer_done(smc,1) ;
}
