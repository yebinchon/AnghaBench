
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s_smc {TYPE_2__* y; } ;
struct s_phy {void* wc_flag; TYPE_1__* mib; } ;
struct TYPE_4__ {int cf_join; } ;
struct TYPE_3__ {int fddiPORTMy_Type; } ;


 void* FALSE ;
 size_t PB ;


 int THRU_ENABLED (struct s_smc*) ;

 void* TRUE ;


__attribute__((used)) static void selection_criteria (struct s_smc *smc, struct s_phy *phy)
{

 switch (phy->mib->fddiPORTMy_Type) {
 case 131:
  if ( !THRU_ENABLED(smc) && smc->y[PB].cf_join ) {
   phy->wc_flag = TRUE ;
  } else {
   phy->wc_flag = FALSE ;
  }

  break;
 case 130:

  phy->wc_flag = FALSE ;
  break;
 case 128:
  phy->wc_flag = FALSE ;
  break;
 case 129:
  phy->wc_flag = FALSE ;
  break;
 }

}
