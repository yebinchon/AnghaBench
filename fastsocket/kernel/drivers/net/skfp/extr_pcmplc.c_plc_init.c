
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sas; } ;
struct s_smc {TYPE_2__ s; TYPE_1__* y; } ;
struct TYPE_6__ {int para; scalar_t__ timer; } ;
struct TYPE_4__ {scalar_t__ pmd_scramble; } ;


 int PLC (int,scalar_t__) ;
 int PLCS_CONTROL_C_S ;
 int PLCS_CONTROL_C_U ;
 int PLCS_FASSERT_S ;
 int PLCS_FASSERT_U ;
 int PLCS_FDEASSERT_S ;
 int PLCS_FDEASSERT_U ;
 int PLC_REVISION_A ;
 int PLC_REV_MASK ;
 int PL_CLASS_S ;
 scalar_t__ PL_CNTRL_A ;
 scalar_t__ PL_CNTRL_B ;
 scalar_t__ PL_CNTRL_C ;
 scalar_t__ PL_INTR_EVENT ;
 scalar_t__ PL_INTR_MASK ;
 int PL_PCM_STOP ;
 scalar_t__ PL_STATUS_A ;
 scalar_t__ PL_T_FOT_ASS ;
 scalar_t__ PL_T_FOT_DEASS ;
 int PS ;
 scalar_t__ SMT_SAS ;
 int inpw (int ) ;
 int outpw (int ,int ) ;
 int plc_clear_irq (struct s_smc*,int) ;
 int plc_imsk_na ;
 TYPE_3__* pltm ;

__attribute__((used)) static void plc_init(struct s_smc *smc, int p)
{
 int i ;

 int rev ;



 outpw(PLC(p,PL_CNTRL_B),0) ;
 outpw(PLC(p,PL_CNTRL_B),PL_PCM_STOP) ;
 outpw(PLC(p,PL_CNTRL_A),0) ;





 rev = inpw(PLC(p,PL_STATUS_A)) & PLC_REV_MASK ;
 if (rev != PLC_REVISION_A)

 {
  if (smc->y[p].pmd_scramble) {
   outpw(PLC(p,PL_CNTRL_C),PLCS_CONTROL_C_S) ;




  }
  else {
   outpw(PLC(p,PL_CNTRL_C),PLCS_CONTROL_C_U) ;




  }
 }




 for ( i = 0 ; pltm[i].timer; i++)
  outpw(PLC(p,pltm[i].timer),pltm[i].para) ;

 (void)inpw(PLC(p,PL_INTR_EVENT)) ;
 plc_clear_irq(smc,p) ;
 outpw(PLC(p,PL_INTR_MASK),plc_imsk_na);
 if ((smc->s.sas == SMT_SAS) && (p == PS)) {
  outpw(PLC(p,PL_CNTRL_B),PL_CLASS_S) ;
 }

}
