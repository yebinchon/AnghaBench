
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
 int FM_MDREG1 ;
 int FM_MMODE ;
 int FM_MONLINE ;
 int FM_SELRA ;
 int MDR1INIT ;
 int SETMASK (int ,int,int) ;
 int enable_formac (struct s_smc*) ;

__attribute__((used)) static void formac_online(struct s_smc *smc)
{
 enable_formac(smc) ;
 SETMASK(FM_A(FM_MDREG1),FM_MONLINE | FM_SELRA | MDR1INIT |
  smc->hw.fp.rx_mode, FM_MMODE | FM_SELRA | FM_ADDRX) ;
}
