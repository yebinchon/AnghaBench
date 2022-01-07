
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int * p; } ;
struct s_smc {TYPE_2__ mib; TYPE_1__* y; } ;
struct TYPE_6__ {scalar_t__ d_sba; scalar_t__ d_ess; scalar_t__ d_plc; scalar_t__ d_cfm; scalar_t__ d_pcm; scalar_t__ d_ecm; scalar_t__ d_rmt; scalar_t__ d_smtf; scalar_t__ d_smt; } ;
struct TYPE_4__ {int * mib; } ;


 int NUMPHYS ;
 int PNMI_INIT (struct s_smc*) ;
 int cfm (struct s_smc*,int ) ;
 int cfm_init (struct s_smc*) ;
 TYPE_3__ debug ;
 int ecm (struct s_smc*,int ) ;
 int ecm_init (struct s_smc*) ;
 int ev_init (struct s_smc*) ;
 int init_fddi_driver (struct s_smc*,int *) ;
 int pcm (struct s_smc*,int,int ) ;
 int pcm_init (struct s_smc*) ;
 int rmt (struct s_smc*,int ) ;
 int rmt_init (struct s_smc*) ;
 int set_oem_spec_val (struct s_smc*) ;
 int smt_agent_init (struct s_smc*) ;
 int smt_agent_task (struct s_smc*) ;
 int smt_fixup_mib (struct s_smc*) ;
 int smt_init_evc (struct s_smc*) ;
 int smt_set_mac_opvalues (struct s_smc*) ;
 int smt_timer_init (struct s_smc*) ;

int init_smt(struct s_smc *smc, u_char *mac_addr)

{
 int p ;
 for ( p = 0; p < NUMPHYS; p ++ ) {
  smc->y[p].mib = & smc->mib.p[p] ;
 }

 set_oem_spec_val(smc) ;
 (void) smt_set_mac_opvalues(smc) ;
 init_fddi_driver(smc,mac_addr) ;
 smt_fixup_mib(smc) ;

 ev_init(smc) ;

 smt_init_evc(smc) ;

 smt_timer_init(smc) ;
 smt_agent_init(smc) ;

 pcm_init(smc) ;
 ecm_init(smc) ;
 cfm_init(smc) ;
 rmt_init(smc) ;

 for (p = 0 ; p < NUMPHYS ; p++) {
  pcm(smc,p,0) ;
 }
 ecm(smc,0) ;
 cfm(smc,0) ;
 rmt(smc,0) ;

 smt_agent_task(smc) ;

        PNMI_INIT(smc) ;

 return(0) ;
}
