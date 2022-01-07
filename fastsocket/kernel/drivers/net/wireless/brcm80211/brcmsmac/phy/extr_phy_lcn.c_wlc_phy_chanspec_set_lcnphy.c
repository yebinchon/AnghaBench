
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int radio_chanspec; } ;
struct TYPE_4__ {int ptcentreTs20; int ptcentreFactor; } ;
struct TYPE_3__ {int boardflags; } ;


 int BFL_FEM ;
 int CHSPEC_CHANNEL (int ) ;
 TYPE_2__* lcnphy_sfo_cfg ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int udelay (int) ;
 int wlc_lcnphy_load_tx_iir_filter (struct brcms_phy*,int,int) ;
 int wlc_lcnphy_radio_2064_channel_tune_4313 (struct brcms_phy*,int) ;
 int wlc_lcnphy_set_chanspec_tweaks (struct brcms_phy*,int ) ;
 int wlc_lcnphy_toggle_afe_pwdn (struct brcms_phy*) ;
 int wlc_phy_chanspec_radio_set (struct brcms_phy_pub*,int ) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

void wlc_phy_chanspec_set_lcnphy(struct brcms_phy *pi, u16 chanspec)
{
 u8 channel = CHSPEC_CHANNEL(chanspec);

 wlc_phy_chanspec_radio_set((struct brcms_phy_pub *)pi, chanspec);

 wlc_lcnphy_set_chanspec_tweaks(pi, pi->radio_chanspec);

 or_phy_reg(pi, 0x44a, 0x44);
 write_phy_reg(pi, 0x44a, 0x80);

 wlc_lcnphy_radio_2064_channel_tune_4313(pi, channel);
 udelay(1000);

 wlc_lcnphy_toggle_afe_pwdn(pi);

 write_phy_reg(pi, 0x657, lcnphy_sfo_cfg[channel - 1].ptcentreTs20);
 write_phy_reg(pi, 0x658, lcnphy_sfo_cfg[channel - 1].ptcentreFactor);

 if (CHSPEC_CHANNEL(pi->radio_chanspec) == 14) {
  mod_phy_reg(pi, 0x448, (0x3 << 8), (2) << 8);

  wlc_lcnphy_load_tx_iir_filter(pi, 0, 3);
 } else {
  mod_phy_reg(pi, 0x448, (0x3 << 8), (1) << 8);

  wlc_lcnphy_load_tx_iir_filter(pi, 0, 2);
 }

 if (pi->sh->boardflags & BFL_FEM)
  wlc_lcnphy_load_tx_iir_filter(pi, 1, 0);
 else
  wlc_lcnphy_load_tx_iir_filter(pi, 1, 3);

 mod_phy_reg(pi, 0x4eb, (0x7 << 3), (1) << 3);
}
