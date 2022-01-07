
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char trace_prop; int path_test; } ;
struct TYPE_3__ {int sas; } ;
struct s_smc {TYPE_2__ e; TYPE_1__ s; } ;


 int DB_ECM (char*,char,int) ;
 int ENTITY_BIT (int ) ;
 int ENTITY_MAC ;
 int ENTITY_PHY (int) ;
 scalar_t__ EVENT_PCM ;
 scalar_t__ EVENT_PCMA ;
 scalar_t__ EVENT_PCMB ;
 char PA ;
 int PB ;
 int PC_TRACE ;
 int PT_PENDING ;
 int RS_EVENT ;
 int RS_SET (struct s_smc*,int ) ;

 int SMT_E0108 ;
 int SMT_E0108_MSG ;

 int SMT_PANIC (struct s_smc*,int ,int ) ;

 int cfm_get_mac_input (struct s_smc*) ;
 int cfm_get_mac_output (struct s_smc*) ;
 int pcm_get_s_port (struct s_smc*) ;
 int queue_event (struct s_smc*,scalar_t__,int ) ;

__attribute__((used)) static void prop_actions(struct s_smc *smc)
{
 int port_in = 0 ;
 int port_out = 0 ;

 RS_SET(smc,RS_EVENT) ;
 switch (smc->s.sas) {
 case 128 :
  port_in = port_out = pcm_get_s_port(smc) ;
  break ;
 case 130 :
  port_in = cfm_get_mac_input(smc) ;
  port_out = cfm_get_mac_output(smc) ;
  break ;
 case 129 :
  SMT_PANIC(smc,SMT_E0108, SMT_E0108_MSG) ;
  return ;
 }

 DB_ECM("ECM : prop_actions - trace_prop %d\n", smc->e.trace_prop,0) ;
 DB_ECM("ECM : prop_actions - in %d out %d\n", port_in,port_out) ;

 if (smc->e.trace_prop & ENTITY_BIT(ENTITY_MAC)) {

  DB_ECM("ECM : initiate TRACE on PHY %c\n",'A'+port_in-PA,0) ;
  queue_event(smc,EVENT_PCM+port_in,PC_TRACE) ;
 }
 else if ((smc->e.trace_prop & ENTITY_BIT(ENTITY_PHY(PA))) &&
  port_out != PA) {

  DB_ECM("ECM : propagate TRACE on PHY B\n",0,0) ;
  queue_event(smc,EVENT_PCMB,PC_TRACE) ;
 }
 else if ((smc->e.trace_prop & ENTITY_BIT(ENTITY_PHY(PB))) &&
  port_out != PB) {

  DB_ECM("ECM : propagate TRACE on PHY A\n",0,0) ;
  queue_event(smc,EVENT_PCMA,PC_TRACE) ;
 }
 else {

  DB_ECM("ECM : TRACE terminated\n",0,0) ;
  smc->e.path_test = PT_PENDING ;
 }
 smc->e.trace_prop = 0 ;
}
