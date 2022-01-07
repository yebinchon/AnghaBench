
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int smt_timer; } ;
struct s_smc {TYPE_1__ sm; } ;


 int DB_SMT (char*,int ,int ) ;
 int EVENT_SMT ;
 int EV_TOKEN (int ,int ) ;
 int SM_TIMER ;
 int smt_timer_start (struct s_smc*,int *,int ,int ) ;

void smt_agent_task(struct s_smc *smc)
{
 smt_timer_start(smc,&smc->sm.smt_timer, (u_long)1000000L,
  EV_TOKEN(EVENT_SMT,SM_TIMER)) ;
 DB_SMT("SMT agent task\n",0,0) ;
}
