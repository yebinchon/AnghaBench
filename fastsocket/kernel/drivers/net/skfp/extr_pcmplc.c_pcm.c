
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {struct s_phy* y; TYPE_1__ s; } ;
struct s_phy {scalar_t__ np; int phy_name; struct fddi_mib_p* mib; } ;
struct fddi_mib_p {int fddiPORTPCMState; int fddiPORTPCMStateX; scalar_t__ fddiPORTIndex; } ;


 int AFLAG ;
 int DB_PCM (char*,int ,char*) ;
 int DB_SNMP (char*,int,int) ;
 scalar_t__ INDEX_PORT ;
 int PC0_OFF ;
 int PC2_TRACE ;
 int PC3_CONNECT ;
 int PC5_SIGNAL ;
 int PC8_ACTIVE ;
 int const PS ;
 int SMT_EVENT_PORT_PATH_CHANGE ;
 scalar_t__ SMT_SAS ;
 char** pcm_events ;
 int pcm_fsm (struct s_smc*,struct s_phy*,int) ;
 int pcm_state_change (struct s_smc*,int const,int) ;
 int * pcm_states ;
 int smt_srf_event (struct s_smc*,int ,int,int ) ;
 int snmp_fddi_trap (struct s_smc*,int,int) ;

void pcm(struct s_smc *smc, const int np, int event)
{
 int state ;
 int oldstate ;
 struct s_phy *phy ;
 struct fddi_mib_p *mib ;





 if ((np != PS) && (smc->s.sas == SMT_SAS))
  return ;

 phy = &smc->y[np] ;
 mib = phy->mib ;
 oldstate = mib->fddiPORTPCMState ;
 do {
  DB_PCM("PCM %c: state %s",
   phy->phy_name,
   (mib->fddiPORTPCMState & AFLAG) ? "ACTIONS " : "") ;
  DB_PCM("%s, event %s\n",
   pcm_states[mib->fddiPORTPCMState & ~AFLAG],
   pcm_events[event]) ;
  state = mib->fddiPORTPCMState ;
  pcm_fsm(smc,phy,event) ;
  event = 0 ;
 } while (state != mib->fddiPORTPCMState) ;






 if (state == PC5_SIGNAL)
  mib->fddiPORTPCMStateX = PC3_CONNECT ;
 else
  mib->fddiPORTPCMStateX = state ;





 if ( mib->fddiPORTPCMState != oldstate &&
  ((oldstate == PC8_ACTIVE) || (mib->fddiPORTPCMState == PC8_ACTIVE))) {
  smt_srf_event(smc,SMT_EVENT_PORT_PATH_CHANGE,
   (int) (INDEX_PORT+ phy->np),0) ;
 }
 pcm_state_change(smc,np,state) ;
}
