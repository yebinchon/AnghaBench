
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_p_sde {int sde_type; int sde_mac_count; int sde_master; int sde_non_master; } ;
struct TYPE_2__ {int fddiSMTMaster_Ct; int fddiSMTNonMaster_Ct; } ;
struct s_smc {TYPE_1__ mib; } ;


 int NUMMACS ;
 int SMTSETPARA (struct smt_p_sde*,int ) ;
 int SMT_P_SDE ;
 int SMT_SDE_CONCENTRATOR ;
 int SMT_SDE_STATION ;

__attribute__((used)) static void smt_fill_sde(struct s_smc *smc, struct smt_p_sde *sde)
{
 SMTSETPARA(sde,SMT_P_SDE) ;
 sde->sde_non_master = smc->mib.fddiSMTNonMaster_Ct ;
 sde->sde_master = smc->mib.fddiSMTMaster_Ct ;
 sde->sde_mac_count = NUMMACS ;



 sde->sde_type = SMT_SDE_STATION ;

}
