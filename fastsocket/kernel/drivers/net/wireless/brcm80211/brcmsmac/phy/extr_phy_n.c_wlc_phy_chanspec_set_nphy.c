
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct nphy_sfo_cfg {int dummy; } ;
struct chan_info_nphy_radio205x {int PHY_BW1a; } ;
struct chan_info_nphy_radio2057_rev5 {int PHY_BW1a; } ;
struct chan_info_nphy_radio2057 {int PHY_BW1a; } ;
struct chan_info_nphy_2055 {int PHY_BW1a; } ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_4__ {int radiorev; int phy_rev; } ;
struct brcms_phy {scalar_t__ bw; TYPE_2__ pubpi; TYPE_1__* sh; } ;
struct TYPE_3__ {int physhim; } ;


 int BPHY_BAND_SEL_UP20 ;
 scalar_t__ CHSPEC_BW (int ) ;
 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ CHSPEC_IS5G (int ) ;
 scalar_t__ CHSPEC_SB_UPPER (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 int PRIM_SEL_UP20 ;
 int RADIO_2055_MASTER_CNTRL1 ;
 int RADIO_2056_SYN ;
 int RADIO_2056_SYN_COM_CTRL ;
 int RADIO_2057_TIA_CONFIG_CORE0 ;
 int RADIO_2057_TIA_CONFIG_CORE1 ;
 int and_phy_reg (struct brcms_phy*,int,int) ;
 int mod_radio_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int wlapi_bmac_bw_set (int ,scalar_t__) ;
 int wlc_phy_chan2freq_nphy (struct brcms_phy*,int ,int*,struct chan_info_nphy_radio2057 const**,struct chan_info_nphy_radio205x const**,struct chan_info_nphy_radio2057_rev5 const**,struct chan_info_nphy_2055 const**) ;
 int wlc_phy_chanspec_nphy_setup (struct brcms_phy*,int ,struct nphy_sfo_cfg const*) ;
 int wlc_phy_chanspec_radio2055_setup (struct brcms_phy*,struct chan_info_nphy_2055 const*) ;
 int wlc_phy_chanspec_radio2056_setup (struct brcms_phy*,struct chan_info_nphy_radio205x const*) ;
 int wlc_phy_chanspec_radio2057_setup (struct brcms_phy*,struct chan_info_nphy_radio2057 const*,struct chan_info_nphy_radio2057_rev5 const*) ;
 int wlc_phy_chanspec_radio_set (struct brcms_phy_pub*,int ) ;

void wlc_phy_chanspec_set_nphy(struct brcms_phy *pi, u16 chanspec)
{
 int freq;
 const struct chan_info_nphy_radio2057 *t0 = ((void*)0);
 const struct chan_info_nphy_radio205x *t1 = ((void*)0);
 const struct chan_info_nphy_radio2057_rev5 *t2 = ((void*)0);
 const struct chan_info_nphy_2055 *t3 = ((void*)0);

 if (!wlc_phy_chan2freq_nphy
      (pi, CHSPEC_CHANNEL(chanspec), &freq, &t0, &t1, &t2, &t3))
  return;

 wlc_phy_chanspec_radio_set((struct brcms_phy_pub *) pi, chanspec);

 if (CHSPEC_BW(chanspec) != pi->bw)
  wlapi_bmac_bw_set(pi->sh->physhim, CHSPEC_BW(chanspec));

 if (CHSPEC_IS40(chanspec)) {
  if (CHSPEC_SB_UPPER(chanspec)) {
   or_phy_reg(pi, 0xa0, BPHY_BAND_SEL_UP20);
   if (NREV_GE(pi->pubpi.phy_rev, 7))
    or_phy_reg(pi, 0x310, PRIM_SEL_UP20);
  } else {
   and_phy_reg(pi, 0xa0, ~BPHY_BAND_SEL_UP20);
   if (NREV_GE(pi->pubpi.phy_rev, 7))
    and_phy_reg(pi, 0x310,
         (~PRIM_SEL_UP20 & 0xffff));
  }
 }

 if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  if (NREV_GE(pi->pubpi.phy_rev, 7)) {

   if ((pi->pubpi.radiorev <= 4)
       || (pi->pubpi.radiorev == 6)) {
    mod_radio_reg(pi, RADIO_2057_TIA_CONFIG_CORE0,
           0x2,
           (CHSPEC_IS5G(chanspec) ? (1 << 1)
            : 0));
    mod_radio_reg(pi, RADIO_2057_TIA_CONFIG_CORE1,
           0x2,
           (CHSPEC_IS5G(chanspec) ? (1 << 1)
            : 0));
   }

   wlc_phy_chanspec_radio2057_setup(pi, t0, t2);
   wlc_phy_chanspec_nphy_setup(pi, chanspec,
    (pi->pubpi.radiorev == 5) ?
    (const struct nphy_sfo_cfg *)&(t2->PHY_BW1a) :
    (const struct nphy_sfo_cfg *)&(t0->PHY_BW1a));

  } else {

   mod_radio_reg(pi,
          RADIO_2056_SYN_COM_CTRL | RADIO_2056_SYN,
          0x4,
          (CHSPEC_IS5G(chanspec) ? (0x1 << 2) : 0));
   wlc_phy_chanspec_radio2056_setup(pi, t1);

   wlc_phy_chanspec_nphy_setup(pi, chanspec,
    (const struct nphy_sfo_cfg *) &(t1->PHY_BW1a));
  }

 } else {

  mod_radio_reg(pi, RADIO_2055_MASTER_CNTRL1, 0x70,
         (CHSPEC_IS5G(chanspec) ? (0x02 << 4)
          : (0x05 << 4)));

  wlc_phy_chanspec_radio2055_setup(pi, t3);
  wlc_phy_chanspec_nphy_setup(pi, chanspec,
         (const struct nphy_sfo_cfg *)
          &(t3->PHY_BW1a));
 }

}
