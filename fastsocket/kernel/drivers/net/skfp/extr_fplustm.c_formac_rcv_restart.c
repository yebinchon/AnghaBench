
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_mode; } ;
struct TYPE_4__ {TYPE_1__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;


 int FM_A (int ) ;
 int FM_ADDRX ;
 int FM_CMDREG1 ;
 int FM_ICLLR ;
 int FM_MDREG1 ;
 int SETMASK (int ,int ,int ) ;
 int outpw (int ,int ) ;

__attribute__((used)) static void formac_rcv_restart(struct s_smc *smc)
{

 SETMASK(FM_A(FM_MDREG1),smc->hw.fp.rx_mode,FM_ADDRX) ;

 outpw(FM_A(FM_CMDREG1),FM_ICLLR) ;
}
