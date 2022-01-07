
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;







 int directed_beacon (struct s_smc*) ;
 int formac_offline (struct s_smc*) ;
 int formac_online (struct s_smc*) ;
 int init_mac (struct s_smc*,int ) ;

void sm_ma_control(struct s_smc *smc, int mode)
{
 switch(mode) {
 case 130 :

  formac_offline(smc) ;
  break ;
 case 129 :
  (void)init_mac(smc,0) ;
  break ;
 case 132 :
  formac_online(smc) ;
  break ;
 case 131 :
  directed_beacon(smc) ;
  break ;
 case 128 :



  break ;
 }
}
