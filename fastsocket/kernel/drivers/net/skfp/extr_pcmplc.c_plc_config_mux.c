
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;


 int CLEAR (int ,int ) ;
 int MUX_WRAPB ;
 int PA ;
 int PB ;
 int PLC (int ,int ) ;
 int PL_CNTRL_A ;
 int PL_CNTRL_B ;
 int PL_CONFIG_CNTRL ;
 int PL_SC_REM_LOOP ;
 int SETMASK (int ,int ,int ) ;
 scalar_t__ SMT_DAS ;

void plc_config_mux(struct s_smc *smc, int mux)
{
 if (smc->s.sas != SMT_DAS)
  return ;
 if (mux == MUX_WRAPB) {
  SETMASK(PLC(PA,PL_CNTRL_B),PL_CONFIG_CNTRL,PL_CONFIG_CNTRL) ;
  SETMASK(PLC(PA,PL_CNTRL_A),PL_SC_REM_LOOP,PL_SC_REM_LOOP) ;
 }
 else {
  CLEAR(PLC(PA,PL_CNTRL_B),PL_CONFIG_CNTRL) ;
  CLEAR(PLC(PA,PL_CNTRL_A),PL_SC_REM_LOOP) ;
 }
 CLEAR(PLC(PB,PL_CNTRL_B),PL_CONFIG_CNTRL) ;
 CLEAR(PLC(PB,PL_CNTRL_A),PL_SC_REM_LOOP) ;
}
