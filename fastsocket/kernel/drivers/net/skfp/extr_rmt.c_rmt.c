
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* m; } ;
struct s_smc {TYPE_1__ mib; } ;
struct TYPE_4__ {int fddiMACRMTState; } ;


 int AFLAG ;
 int DB_RMT (char*,char*,int ) ;
 size_t MAC0 ;
 char** rmt_events ;
 int rmt_fsm (struct s_smc*,int) ;
 int rmt_state_change (struct s_smc*,int) ;
 int * rmt_states ;

void rmt(struct s_smc *smc, int event)
{
 int state ;

 do {
  DB_RMT("RMT : state %s%s",
   (smc->mib.m[MAC0].fddiMACRMTState & AFLAG) ? "ACTIONS " : "",
   rmt_states[smc->mib.m[MAC0].fddiMACRMTState & ~AFLAG]) ;
  DB_RMT(" event %s\n",rmt_events[event],0) ;
  state = smc->mib.m[MAC0].fddiMACRMTState ;
  rmt_fsm(smc,event) ;
  event = 0 ;
 } while (state != smc->mib.m[MAC0].fddiMACRMTState) ;
 rmt_state_change(smc,(int)smc->mib.m[MAC0].fddiMACRMTState) ;
}
