
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_para {int dummy; } ;
struct smt_p_setcount {scalar_t__ count; scalar_t__ timestamp; } ;
struct smt_header {int dummy; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ timestamp; } ;
struct TYPE_4__ {TYPE_1__ fddiSMTSetCount; } ;
struct s_smc {TYPE_2__ mib; } ;


 int SMT_P1035 ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ sm_to_para (struct s_smc*,struct smt_header*,int ) ;

__attribute__((used)) static int smt_check_set_count(struct s_smc *smc, struct smt_header *sm)
{
 struct smt_para *pa ;
 struct smt_p_setcount *sc ;

 pa = (struct smt_para *) sm_to_para(smc,sm,SMT_P1035) ;
 if (pa) {
  sc = (struct smt_p_setcount *) pa ;
  if ((smc->mib.fddiSMTSetCount.count != sc->count) ||
   memcmp((char *) smc->mib.fddiSMTSetCount.timestamp,
   (char *)sc->timestamp,8))
   return(1) ;
 }
 return(0) ;
}
