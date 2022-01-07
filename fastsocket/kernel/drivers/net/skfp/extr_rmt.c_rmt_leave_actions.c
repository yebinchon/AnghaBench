
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int EC_DISCONNECT ;
 int EVENT_ECM ;
 int queue_event (struct s_smc*,int ,int ) ;

__attribute__((used)) static void rmt_leave_actions(struct s_smc *smc)
{
 queue_event(smc,EVENT_ECM,EC_DISCONNECT) ;




}
