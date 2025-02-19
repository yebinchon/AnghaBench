
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {int radio_is_on; TYPE_1__ pubpi; int radio_chanspec; } ;


 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_LT (int ,int) ;
 int RADIO_2056_SYN_COM_PU ;
 int RADIO_2056_TX0 ;
 int RADIO_2056_TX1 ;
 int RADIO_2056_TX_MIXA_BOOST_TUNE ;
 int RADIO_2056_TX_MIXG_BOOST_TUNE ;
 int RADIO_2056_TX_PADA_BOOST_TUNE ;
 int RADIO_2056_TX_PADG_BOOST_TUNE ;
 int RADIO_2056_TX_PGAA_BOOST_TUNE ;
 int RADIO_2056_TX_PGAG_BOOST_TUNE ;
 int RFCC_CHIP0_PU ;
 int and_phy_reg (struct brcms_phy*,int,int ) ;
 int mod_radio_reg (struct brcms_phy*,int,int,int) ;
 int wlc_phy_chanspec_set (struct brcms_phy_pub*,int ) ;
 int wlc_phy_radio_init_2055 (struct brcms_phy*) ;
 int wlc_phy_radio_init_2056 (struct brcms_phy*) ;
 int wlc_phy_radio_init_2057 (struct brcms_phy*) ;
 int wlc_phy_radio_postinit_2055 (struct brcms_phy*) ;
 int wlc_phy_radio_postinit_2056 (struct brcms_phy*) ;
 int wlc_phy_radio_postinit_2057 (struct brcms_phy*) ;
 int wlc_phy_radio_preinit_2055 (struct brcms_phy*) ;
 int wlc_phy_radio_preinit_205x (struct brcms_phy*) ;
 int write_radio_reg (struct brcms_phy*,int,int ) ;

void wlc_phy_switch_radio_nphy(struct brcms_phy *pi, bool on)
{
 if (on) {
  if (NREV_GE(pi->pubpi.phy_rev, 7)) {
   if (!pi->radio_is_on) {
    wlc_phy_radio_preinit_205x(pi);
    wlc_phy_radio_init_2057(pi);
    wlc_phy_radio_postinit_2057(pi);
   }

   wlc_phy_chanspec_set((struct brcms_phy_pub *) pi,
          pi->radio_chanspec);
  } else if (NREV_GE(pi->pubpi.phy_rev, 3)) {
   wlc_phy_radio_preinit_205x(pi);
   wlc_phy_radio_init_2056(pi);
   wlc_phy_radio_postinit_2056(pi);

   wlc_phy_chanspec_set((struct brcms_phy_pub *) pi,
          pi->radio_chanspec);
  } else {
   wlc_phy_radio_preinit_2055(pi);
   wlc_phy_radio_init_2055(pi);
   wlc_phy_radio_postinit_2055(pi);
  }

  pi->radio_is_on = 1;

 } else {

  if (NREV_GE(pi->pubpi.phy_rev, 3)
      && NREV_LT(pi->pubpi.phy_rev, 7)) {
   and_phy_reg(pi, 0x78, ~RFCC_CHIP0_PU);
   mod_radio_reg(pi, RADIO_2056_SYN_COM_PU, 0x2, 0x0);

   write_radio_reg(pi,
     RADIO_2056_TX_PADA_BOOST_TUNE |
     RADIO_2056_TX0, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PADG_BOOST_TUNE |
     RADIO_2056_TX0, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PGAA_BOOST_TUNE |
     RADIO_2056_TX0, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PGAG_BOOST_TUNE |
     RADIO_2056_TX0, 0);
   mod_radio_reg(pi,
          RADIO_2056_TX_MIXA_BOOST_TUNE |
          RADIO_2056_TX0, 0xf0, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_MIXG_BOOST_TUNE |
     RADIO_2056_TX0, 0);

   write_radio_reg(pi,
     RADIO_2056_TX_PADA_BOOST_TUNE |
     RADIO_2056_TX1, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PADG_BOOST_TUNE |
     RADIO_2056_TX1, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PGAA_BOOST_TUNE |
     RADIO_2056_TX1, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_PGAG_BOOST_TUNE |
     RADIO_2056_TX1, 0);
   mod_radio_reg(pi,
          RADIO_2056_TX_MIXA_BOOST_TUNE |
          RADIO_2056_TX1, 0xf0, 0);
   write_radio_reg(pi,
     RADIO_2056_TX_MIXG_BOOST_TUNE |
     RADIO_2056_TX1, 0);

   pi->radio_is_on = 0;
  }

  if (NREV_GE(pi->pubpi.phy_rev, 8)) {
   and_phy_reg(pi, 0x78, ~RFCC_CHIP0_PU);
   pi->radio_is_on = 0;
  }

 }
}
