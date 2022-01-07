
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nphy_papd_restore_state {int mm; int * afeoverride; int * afectrl; int * intpa_master; int * fbmix; int * vga_master; int * atten; } ;
struct TYPE_2__ {size_t phy_corenum; int radiorev; int phy_rev; } ;
struct brcms_phy {int radio_chanspec; TYPE_1__ pubpi; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 int INTPAA_MASTER ;
 int INTPAG_MASTER ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID0 ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID1 ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID2 ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_IS (int ,int) ;
 size_t PHY_CORE_0 ;
 int RADIO_2056 ;
 int RADIO_2057 ;
 int RX ;
 int TX ;
 int TXFBMIX_A ;
 int TXFBMIX_G ;
 int TXRXCOUPLE_2G_ATTEN ;
 int TXRXCOUPLE_2G_PWRUP ;
 int TXRXCOUPLE_5G_ATTEN ;
 int TXRXCOUPLE_5G_PWRUP ;
 int VGA_MASTER ;
 int WRITE_RADIO_REG2 (struct brcms_phy*,int ,int ,size_t,int ,int ) ;
 int WRITE_RADIO_REG3 (struct brcms_phy*,int ,int ,size_t,int ,int ) ;
 int wlc_phy_ipa_set_bbmult_nphy (struct brcms_phy*,int,int) ;
 int wlc_phy_rfctrl_override_nphy (struct brcms_phy*,int,int ,int,int) ;
 int wlc_phy_rfctrl_override_nphy_rev7 (struct brcms_phy*,int,int,int,int,int ) ;
 int wlc_phy_stopplayback_nphy (struct brcms_phy*) ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void
wlc_phy_papd_cal_cleanup_nphy(struct brcms_phy *pi,
         struct nphy_papd_restore_state *state)
{
 u8 core;

 wlc_phy_stopplayback_nphy(pi);

 if (NREV_GE(pi->pubpi.phy_rev, 7)) {

  for (core = 0; core < pi->pubpi.phy_corenum; core++) {

   if (CHSPEC_IS2G(pi->radio_chanspec)) {
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TXRXCOUPLE_2G_PWRUP, 0);
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TXRXCOUPLE_2G_ATTEN,
       state->atten[core]);
   } else {
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TXRXCOUPLE_5G_PWRUP, 0);
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TXRXCOUPLE_5G_ATTEN,
       state->atten[core]);
   }
  }

  if ((pi->pubpi.radiorev == 4) || (pi->pubpi.radiorev == 6))
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 2),
    1, 0x3, 0,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
  else
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 2),
    0, 0x3, 1,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);

  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 1),
        0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 0), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID2);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 2), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID2);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 11), 1, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 3), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID0);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 11), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID0);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 12), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID0);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 2), 1, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 0), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 1), 1, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID2);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 8), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 9), 1, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 10), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 3), 1, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 5), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);
  wlc_phy_rfctrl_override_nphy_rev7(pi, (0x1 << 4), 0, 0x3, 1,
        NPHY_REV7_RFCTRLOVERRIDE_ID1);

  for (core = 0; core < pi->pubpi.phy_corenum; core++) {

   write_phy_reg(pi, (core == PHY_CORE_0) ?
          0xa6 : 0xa7, state->afectrl[core]);
   write_phy_reg(pi, (core == PHY_CORE_0) ? 0x8f :
          0xa5, state->afeoverride[core]);
  }

  wlc_phy_ipa_set_bbmult_nphy(pi, (state->mm >> 8) & 0xff,
         (state->mm & 0xff));

  if (NREV_IS(pi->pubpi.phy_rev, 7)
      || NREV_GE(pi->pubpi.phy_rev, 8))
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 7), 0, 0,
    1,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
 } else {
  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 12), 0, 0x3, 1);
  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 13), 0, 0x3, 1);
  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 0), 0, 0x3, 1);

  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 2), 0, 0x3, 1);
  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 1), 0, 0x3, 1);

  for (core = 0; core < pi->pubpi.phy_corenum; core++) {

   WRITE_RADIO_REG2(pi, RADIO_2056, RX, core, VGA_MASTER,
      state->vga_master[core]);
   if (CHSPEC_IS2G(pi->radio_chanspec)) {
    WRITE_RADIO_REG2(pi, RADIO_2056, RX, core,
       TXFBMIX_G, state->fbmix[core]);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       INTPAG_MASTER,
       state->intpa_master[core]);
   } else {
    WRITE_RADIO_REG2(pi, RADIO_2056, RX, core,
       TXFBMIX_A, state->fbmix[core]);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       INTPAA_MASTER,
       state->intpa_master[core]);
   }

   write_phy_reg(pi, (core == PHY_CORE_0) ?
          0xa6 : 0xa7, state->afectrl[core]);
   write_phy_reg(pi, (core == PHY_CORE_0) ? 0x8f :
          0xa5, state->afeoverride[core]);
  }

  wlc_phy_ipa_set_bbmult_nphy(pi, (state->mm >> 8) & 0xff,
         (state->mm & 0xff));

  wlc_phy_rfctrl_override_nphy(pi, (0x1 << 3), 0, 0x3, 1);
 }
}
