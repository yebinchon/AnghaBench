
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {size_t phy_corenum; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; scalar_t__ nphy_elna_gain_config; TYPE_1__ pubpi; int radio_chanspec; scalar_t__ nphy_gain_boost; } ;
typedef int s16 ;


 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_IS2G (int ) ;
 scalar_t__ PHY_HW_ROUND (int,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int* nphy_def_lnagains ;
 int* nphy_lnagain_est0 ;
 int* nphy_lnagain_est1 ;
 int wlc_phy_stay_in_carriersearch_nphy (struct brcms_phy*,int) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,size_t,int,int,int,int*) ;

__attribute__((used)) static void wlc_phy_adjust_lnagaintbl_nphy(struct brcms_phy *pi)
{
 uint core;
 int ctr;
 s16 gain_delta[2];
 u8 curr_channel;
 u16 minmax_gain[2];
 u16 regval[4];

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 1);

 if (pi->nphy_gain_boost) {
  if ((CHSPEC_IS2G(pi->radio_chanspec))) {

   gain_delta[0] = 6;
   gain_delta[1] = 6;
  } else {

   curr_channel = CHSPEC_CHANNEL(pi->radio_chanspec);
   gain_delta[0] =
    (s16)
    PHY_HW_ROUND(((nphy_lnagain_est0[0] *
            curr_channel) +
           nphy_lnagain_est0[1]), 13);
   gain_delta[1] =
    (s16)
    PHY_HW_ROUND(((nphy_lnagain_est1[0] *
            curr_channel) +
           nphy_lnagain_est1[1]), 13);
  }
 } else {

  gain_delta[0] = 0;
  gain_delta[1] = 0;
 }

 for (core = 0; core < pi->pubpi.phy_corenum; core++) {
  if (pi->nphy_elna_gain_config) {

   regval[0] = nphy_def_lnagains[2] + gain_delta[core];
   regval[1] = nphy_def_lnagains[3] + gain_delta[core];
   regval[2] = nphy_def_lnagains[3] + gain_delta[core];
   regval[3] = nphy_def_lnagains[3] + gain_delta[core];
  } else {
   for (ctr = 0; ctr < 4; ctr++)
    regval[ctr] =
     nphy_def_lnagains[ctr] +
     gain_delta[core];
  }
  wlc_phy_table_write_nphy(pi, core, 4, 8, 16, regval);

  minmax_gain[core] =
   (u16) (nphy_def_lnagains[2] + gain_delta[core] + 4);
 }

 mod_phy_reg(pi, 0x1e, (0xff << 0), (minmax_gain[0] << 0));
 mod_phy_reg(pi, 0x34, (0xff << 0), (minmax_gain[1] << 0));

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 0);
}
