
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_STMCHN ;
 int inpw (int ) ;

int sm_mac_get_tx_state(struct s_smc *smc)
{
 return((inpw(FM_A(FM_STMCHN))>>4)&7) ;
}
