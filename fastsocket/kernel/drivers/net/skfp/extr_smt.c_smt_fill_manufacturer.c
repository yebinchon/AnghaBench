
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_p_manufacturer {scalar_t__ mf_data; } ;
struct TYPE_2__ {scalar_t__ fddiSMTManufacturerData; } ;
struct s_smc {TYPE_1__ mib; } ;


 int SMTSETPARA (struct smp_p_manufacturer*,int ) ;
 int SMT_P_MANUFACTURER ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void smt_fill_manufacturer(struct s_smc *smc,
      struct smp_p_manufacturer *man)
{
 SMTSETPARA(man,SMT_P_MANUFACTURER) ;
 memcpy((char *) man->mf_data,
  (char *) smc->mib.fddiSMTManufacturerData,
  sizeof(man->mf_data)) ;
}
