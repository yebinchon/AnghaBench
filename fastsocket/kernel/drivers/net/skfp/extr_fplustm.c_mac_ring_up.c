
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_ring_is_up; } ;
struct s_smc {TYPE_1__ hw; } ;


 int FALSE ;
 int FM_A (int ) ;
 int FM_ADDET ;
 int FM_CMDREG2 ;
 int FM_IACTR ;
 int FM_MDISRCV ;
 int FM_MDREG1 ;
 int SETMASK (int ,int ,int ) ;
 int TRUE ;
 int formac_rcv_restart (struct s_smc*) ;
 int llc_restart_tx (struct s_smc*) ;
 int outpw (int ,int ) ;

__attribute__((used)) static void mac_ring_up(struct s_smc *smc, int up)
{
 if (up) {
  formac_rcv_restart(smc) ;
  smc->hw.mac_ring_is_up = TRUE ;
  llc_restart_tx(smc) ;
 }
 else {

  SETMASK(FM_A(FM_MDREG1),FM_MDISRCV,FM_ADDET) ;


  outpw(FM_A(FM_CMDREG2),FM_IACTR) ;

  smc->hw.mac_ring_is_up = FALSE ;
 }
}
