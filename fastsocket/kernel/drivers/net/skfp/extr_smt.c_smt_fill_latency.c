
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_p_latency {int lt_latency1; int lt_latency2; void* lt_phyout_idx2; void* lt_phyout_idx1; } ;
struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;


 int SMTSETPARA (struct smt_p_latency*,int ) ;
 scalar_t__ SMT_DAS ;
 int SMT_P_LATENCY ;
 void* phy_index (struct s_smc*,int) ;

__attribute__((used)) static void smt_fill_latency(struct s_smc *smc, struct smt_p_latency *latency)
{
 SMTSETPARA(latency,SMT_P_LATENCY) ;

 latency->lt_phyout_idx1 = phy_index(smc,0) ;
 latency->lt_latency1 = 10 ;




 if (smc->s.sas == SMT_DAS) {
  latency->lt_phyout_idx2 = phy_index(smc,1) ;
  latency->lt_latency2 = 10 ;
 }
 else {
  latency->lt_phyout_idx2 = 0 ;
  latency->lt_latency2 = 0 ;
 }
}
