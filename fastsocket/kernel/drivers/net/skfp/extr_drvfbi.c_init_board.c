
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int fddiSMTBypassPresent; } ;
struct TYPE_3__ {int sas; } ;
struct s_smc {TYPE_2__ mib; TYPE_1__ s; } ;


 int ADDR (int ) ;
 int B0_DAS ;
 int DAS_AVAIL ;
 int DAS_BYP_ST ;
 int SMT_DAS ;
 int SMT_SAS ;
 int card_start (struct s_smc*) ;
 int inp (int ) ;
 int read_address (struct s_smc*,int *) ;

void init_board(struct s_smc *smc, u_char *mac_addr)
{
 card_start(smc) ;
 read_address(smc,mac_addr) ;

 if (!(inp(ADDR(B0_DAS)) & DAS_AVAIL))
  smc->s.sas = SMT_SAS ;
 else
  smc->s.sas = SMT_DAS ;

 if (!(inp(ADDR(B0_DAS)) & DAS_BYP_ST))
  smc->mib.fddiSMTBypassPresent = 0 ;

 else
  smc->mib.fddiSMTBypassPresent = 1 ;

}
