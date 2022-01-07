
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_p_setcount {scalar_t__ timestamp; int count; } ;
struct TYPE_3__ {scalar_t__ timestamp; int count; } ;
struct TYPE_4__ {TYPE_1__ fddiSMTSetCount; } ;
struct s_smc {TYPE_2__ mib; } ;


 int SK_UNUSED (struct s_smc*) ;
 int SMTSETPARA (struct smt_p_setcount*,int ) ;
 int SMT_P_SETCOUNT ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void smt_fill_setcount(struct s_smc *smc, struct smt_p_setcount *setcount)
{
 SK_UNUSED(smc) ;
 SMTSETPARA(setcount,SMT_P_SETCOUNT) ;
 setcount->count = smc->mib.fddiSMTSetCount.count ;
 memcpy((char *)setcount->timestamp,
  (char *)smc->mib.fddiSMTSetCount.timestamp,8) ;
}
