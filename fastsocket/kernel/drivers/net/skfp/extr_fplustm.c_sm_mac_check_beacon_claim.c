
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_IMSK2U ;
 int formac_rcv_restart (struct s_smc*) ;
 int mac_beacon_imsk2u ;
 int mac_imsk2u ;
 int outpw (int ,int) ;
 int process_receive (struct s_smc*) ;

void sm_mac_check_beacon_claim(struct s_smc *smc)
{

 outpw(FM_A(FM_IMSK2U),~(mac_imsk2u | mac_beacon_imsk2u)) ;

 formac_rcv_restart(smc) ;
 process_receive(smc) ;
}
