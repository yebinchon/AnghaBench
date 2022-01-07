
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int PC_HLS ;
 int PC_ILS ;
 int PC_LS_NONE ;
 int PC_LS_PDR ;
 int PC_MLS ;
 int PC_QLS ;
 int PLC (int,int ) ;
 int PL_LINE_ST ;






 int PL_STATUS_A ;
 int inpw (int ) ;
 int plc_is_installed (struct s_smc*,int) ;

int sm_pm_get_ls(struct s_smc *smc, int phy)
{
 int state ;






 state = inpw(PLC(phy,PL_STATUS_A)) & PL_LINE_ST ;
 switch(state) {
 case 128:
  state = PC_QLS ;
  break ;
 case 129:
  state = PC_MLS ;
  break ;
 case 132:
  state = PC_HLS ;
  break ;
 case 130:
 case 131:
  state = PC_ILS ;
  break ;
 case 133:
  state = PC_LS_PDR ;
  break ;
 default :
  state = PC_LS_NONE ;
 }
 return(state) ;
}
