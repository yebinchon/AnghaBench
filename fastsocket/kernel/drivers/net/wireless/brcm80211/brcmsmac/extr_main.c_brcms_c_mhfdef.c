
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {int boardflags; TYPE_1__* band; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_2__ {int phyrev; } ;


 int BFL_NOPLLDOWN ;
 scalar_t__ BRCMS_ISNPHY (TYPE_1__*) ;
 size_t MHF1 ;
 int MHF1_FORCEFASTCLK ;
 int MHF1_IQSWAP_WAR ;
 size_t MHF2 ;
 int MHF2_NPHY40MHZ_WAR ;
 int MHFMAX ;
 scalar_t__ NREV_LT (int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
brcms_c_mhfdef(struct brcms_c_info *wlc, u16 *mhfs, u16 mhf2_init)
{
 struct brcms_hardware *wlc_hw = wlc->hw;

 memset(mhfs, 0, MHFMAX * sizeof(u16));

 mhfs[MHF2] |= mhf2_init;


 if (wlc_hw->boardflags & BFL_NOPLLDOWN)
  mhfs[MHF1] |= MHF1_FORCEFASTCLK;

 if (BRCMS_ISNPHY(wlc_hw->band) && NREV_LT(wlc_hw->band->phyrev, 2)) {
  mhfs[MHF2] |= MHF2_NPHY40MHZ_WAR;
  mhfs[MHF1] |= MHF1_IQSWAP_WAR;
 }
}
