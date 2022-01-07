
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;


 int PS ;
 int SK_UNUSED (struct s_smc*) ;
 scalar_t__ SMT_SAS ;

__attribute__((used)) static int port_to_mib(struct s_smc *smc, int p)
{





 if (smc->s.sas == SMT_SAS)
  return(PS) ;
 return(p) ;

}
