
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fddiSMTNonMaster_Ct; int fddiSMTMaster_Ct; } ;
struct TYPE_3__ {int sas; } ;
struct s_smc {TYPE_2__ mib; TYPE_1__ s; } ;


 int NUMPHYS ;




void smt_fixup_mib(struct s_smc *smc)
{
 switch (smc->s.sas) {
 case 128 :
  smc->mib.fddiSMTNonMaster_Ct = 1 ;
  break ;
 case 130 :
  smc->mib.fddiSMTNonMaster_Ct = 2 ;
  break ;
 }
 smc->mib.fddiSMTMaster_Ct = 0 ;

}
