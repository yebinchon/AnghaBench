
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smt_p_state {int st_topology; int st_dupl_addr; scalar_t__ st_pad; } ;
struct TYPE_6__ {TYPE_2__* m; TYPE_1__* a; scalar_t__ fddiSMTPeerWrapFlag; } ;
struct s_smc {TYPE_3__ mib; } ;
struct TYPE_5__ {scalar_t__ fddiMACUNDA_Flag; scalar_t__ fddiMACDA_Flag; } ;
struct TYPE_4__ {scalar_t__ fddiPATHSbaPayload; } ;


 size_t MAC0 ;
 int SMTSETPARA (struct smt_p_state*,int ) ;
 int SMT_P_STATE ;
 int SMT_ST_MY_DUPA ;
 int SMT_ST_ROOTED_S ;
 int SMT_ST_SRF ;
 int SMT_ST_SYNC_SERVICE ;
 int SMT_ST_TWISTED_A ;
 int SMT_ST_TWISTED_B ;
 int SMT_ST_UNATTACHED ;
 int SMT_ST_UNA_DUPA ;
 int SMT_ST_WRAPPED ;
 scalar_t__ cfm_status_unattached (struct s_smc*) ;
 scalar_t__ pcm_rooted_station (struct s_smc*) ;
 int pcm_status_twisted (struct s_smc*) ;

__attribute__((used)) static void smt_fill_state(struct s_smc *smc, struct smt_p_state *state)
{
 int top ;
 int twist ;

 SMTSETPARA(state,SMT_P_STATE) ;
 state->st_pad = 0 ;


 top = 0 ;
 if (smc->mib.fddiSMTPeerWrapFlag) {
  top |= SMT_ST_WRAPPED ;
 }





 if ((twist = pcm_status_twisted(smc)) & 1) {
  top |= SMT_ST_TWISTED_A ;
 }
 if (twist & 2) {
  top |= SMT_ST_TWISTED_B ;
 }



 if (pcm_rooted_station(smc))
  top |= SMT_ST_ROOTED_S ;
 if (smc->mib.a[0].fddiPATHSbaPayload != 0)
  top |= SMT_ST_SYNC_SERVICE ;
 state->st_topology = top ;
 state->st_dupl_addr =
  ((smc->mib.m[MAC0].fddiMACDA_Flag ? SMT_ST_MY_DUPA : 0 ) |
   (smc->mib.m[MAC0].fddiMACUNDA_Flag ? SMT_ST_UNA_DUPA : 0)) ;
}
