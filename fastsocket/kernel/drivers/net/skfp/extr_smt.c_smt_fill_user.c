
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_p_user {scalar_t__ us_data; } ;
struct TYPE_2__ {scalar_t__ fddiSMTUserData; } ;
struct s_smc {TYPE_1__ mib; } ;


 int SMTSETPARA (struct smp_p_user*,int ) ;
 int SMT_P_USER ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void smt_fill_user(struct s_smc *smc, struct smp_p_user *user)
{
 SMTSETPARA(user,SMT_P_USER) ;
 memcpy((char *) user->us_data,
  (char *) smc->mib.fddiSMTUserData,
  sizeof(user->us_data)) ;
}
