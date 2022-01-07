
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;







 int PLC (int,int ) ;
 int PL_CNTRL_B ;
 int PL_MAINT ;
 int PL_MAINT_LS ;
 int PL_M_HALT ;
 int PL_M_IDLE ;
 int PL_M_MASTR ;
 int PL_M_QUI0 ;
 int PL_M_TPDR ;
 int PL_PCM_STOP ;
 int SK_UNUSED (struct s_smc*) ;
 int inpw (int ) ;
 int outpw (int ,int) ;

__attribute__((used)) static void sm_ph_linestate(struct s_smc *smc, int phy, int ls)
{
 int cntrl ;

 SK_UNUSED(smc) ;

 cntrl = (inpw(PLC(phy,PL_CNTRL_B)) & ~PL_MAINT_LS) |
      PL_PCM_STOP | PL_MAINT ;
 switch(ls) {
 case 128:
  cntrl |= PL_M_QUI0 ;
  break ;
 case 129:
  cntrl |= PL_M_MASTR ;
  break ;
 case 132:
  cntrl |= PL_M_HALT ;
  break ;
 default :
 case 131:
  cntrl |= PL_M_IDLE ;
  break ;
 case 130:
  cntrl |= PL_M_TPDR ;
  break ;
 }
 outpw(PLC(phy,PL_CNTRL_B),cntrl) ;
}
