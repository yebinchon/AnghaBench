
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct smt_p_policy {int pl_connect; int pl_config; } ;
struct TYPE_2__ {int fddiSMTConnectionPolicy; int fddiSMTConfigPolicy; } ;
struct s_smc {TYPE_1__ mib; } ;


 int SMTSETPARA (struct smt_p_policy*,int ) ;
 int SMT_P_POLICY ;

__attribute__((used)) static void smt_fill_policy(struct s_smc *smc, struct smt_p_policy *policy)
{
 int i ;
 u_char *map ;
 u_short in ;
 u_short out ;





 static u_char ansi_weirdness[16] = {
  0,7,5,3,8,1,6,4,9,10,2,11,12,13,14,15
 } ;
 SMTSETPARA(policy,SMT_P_POLICY) ;

 out = 0 ;
 in = smc->mib.fddiSMTConnectionPolicy ;
 for (i = 0, map = ansi_weirdness ; i < 16 ; i++) {
  if (in & 1)
   out |= (1<<*map) ;
  in >>= 1 ;
  map++ ;
 }
 policy->pl_config = smc->mib.fddiSMTConfigPolicy ;
 policy->pl_connect = out ;
}
