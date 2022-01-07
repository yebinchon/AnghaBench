
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int radio_chanspec; TYPE_1__ pubpi; } ;


 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_LT (int ,int) ;
 scalar_t__ PHY_IPA (struct brcms_phy*) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_phy_txlpfbw_nphy(struct brcms_phy *pi)
{
 u8 tx_lpf_bw = 0;

 if (NREV_GE(pi->pubpi.phy_rev, 3) && NREV_LT(pi->pubpi.phy_rev, 7)) {
  if (CHSPEC_IS40(pi->radio_chanspec))
   tx_lpf_bw = 3;
  else
   tx_lpf_bw = 1;

  if (PHY_IPA(pi)) {
   if (CHSPEC_IS40(pi->radio_chanspec))
    tx_lpf_bw = 5;
   else
    tx_lpf_bw = 4;
  }

  write_phy_reg(pi, 0xe8,
         (tx_lpf_bw << 0) |
         (tx_lpf_bw << 3) |
         (tx_lpf_bw << 6) | (tx_lpf_bw << 9));

  if (PHY_IPA(pi)) {

   if (CHSPEC_IS40(pi->radio_chanspec))
    tx_lpf_bw = 4;
   else
    tx_lpf_bw = 1;

   write_phy_reg(pi, 0xe9,
          (tx_lpf_bw << 0) |
          (tx_lpf_bw << 3) |
          (tx_lpf_bw << 6) | (tx_lpf_bw << 9));
  }
 }
}
