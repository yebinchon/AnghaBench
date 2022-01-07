
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;


 int EV_T_CLASS (int ) ;
 int EV_T_EVENT (int ) ;
 int PRINTF (char*,int ,int ) ;
 int queue_event (struct s_smc*,int ,int ) ;

void timer_event(struct s_smc *smc, u_long token)
{
 PRINTF("timer event class %d token %d\n",
  EV_T_CLASS(token),
  EV_T_EVENT(token)) ;
 queue_event(smc,EV_T_CLASS(token),EV_T_EVENT(token));
}
