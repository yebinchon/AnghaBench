
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tm_active; } ;
struct TYPE_3__ {TYPE_2__ rmt_timer2; } ;
struct s_smc {TYPE_1__ r; } ;


 int smt_timer_stop (struct s_smc*,TYPE_2__*) ;

__attribute__((used)) static void stop_rmt_timer2(struct s_smc *smc)
{
 if (smc->r.rmt_timer2.tm_active)
  smt_timer_stop(smc,&smc->r.rmt_timer2) ;
}
