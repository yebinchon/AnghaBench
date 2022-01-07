
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_state; int mac_ring_is_up; } ;
struct s_smc {TYPE_1__ hw; } ;


 int FALSE ;
 int FM_A (int ) ;
 int FM_ADDET ;
 int FM_CMDREG2 ;
 int FM_IACTR ;
 int FM_MDISRCV ;
 int FM_MDREG1 ;
 int FM_MINIT ;
 int FM_MMODE ;
 int SETMASK (int ,int ,int ) ;
 int STOPPED ;
 int disable_formac (struct s_smc*) ;
 int outpw (int ,int ) ;

__attribute__((used)) static void formac_offline(struct s_smc *smc)
{
 outpw(FM_A(FM_CMDREG2),FM_IACTR) ;


 SETMASK(FM_A(FM_MDREG1),FM_MDISRCV,FM_ADDET) ;


 SETMASK(FM_A(FM_MDREG1),FM_MINIT,FM_MMODE) ;

 disable_formac(smc) ;
 smc->hw.mac_ring_is_up = FALSE ;
 smc->hw.hw_state = STOPPED ;
}
