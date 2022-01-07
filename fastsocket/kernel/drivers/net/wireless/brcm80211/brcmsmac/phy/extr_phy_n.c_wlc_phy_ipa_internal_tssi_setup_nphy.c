
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ phy_corenum; int radiorev; int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 int GPIO_MASTER1 ;
 int IQCAL_IDAC ;
 int IQCAL_VCM_HG ;
 scalar_t__ NREV_GE (int ,int) ;
 int NREV_IS (int ,int) ;
 int RADIO_2056 ;
 int RADIO_2057 ;
 int RESERVED_ADDR30 ;
 int RESERVED_ADDR31 ;
 int TSSIA ;
 int TSSIG ;
 int TSSI_MISC1 ;
 int TSSI_MISC2 ;
 int TSSI_MISC3 ;
 int TSSI_VCM ;
 int TX ;
 int TX_AMP_DET ;
 int TX_SSI_MASTER ;
 int TX_SSI_MUX ;
 int WRITE_RADIO_REG2 (struct brcms_phy*,int ,int ,scalar_t__,int ,int) ;
 int WRITE_RADIO_REG3 (struct brcms_phy*,int ,int ,scalar_t__,int ,int) ;
 int WRITE_RADIO_SYN (struct brcms_phy*,int ,int ,int) ;

__attribute__((used)) static void wlc_phy_ipa_internal_tssi_setup_nphy(struct brcms_phy *pi)
{
 u8 core;

 if (NREV_GE(pi->pubpi.phy_rev, 7)) {
  for (core = 0; core < pi->pubpi.phy_corenum; core++) {
   if (CHSPEC_IS2G(pi->radio_chanspec)) {
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TX_SSI_MASTER, 0x5);
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TX_SSI_MUX, 0xe);

    if (pi->pubpi.radiorev != 5)
     WRITE_RADIO_REG3(pi, RADIO_2057, TX,
        core, TSSIA, 0);

    if (!NREV_IS(pi->pubpi.phy_rev, 7))
     WRITE_RADIO_REG3(pi, RADIO_2057, TX,
        core, TSSIG, 0x1);
    else
     WRITE_RADIO_REG3(pi, RADIO_2057, TX,
        core, TSSIG, 0x31);
   } else {
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TX_SSI_MASTER, 0x9);
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TX_SSI_MUX, 0xc);
    WRITE_RADIO_REG3(pi, RADIO_2057, TX, core,
       TSSIG, 0);

    if (pi->pubpi.radiorev != 5) {
     if (!NREV_IS(pi->pubpi.phy_rev, 7))
      WRITE_RADIO_REG3(pi, RADIO_2057,
         TX, core,
         TSSIA, 0x1);
     else
      WRITE_RADIO_REG3(pi, RADIO_2057,
         TX, core,
         TSSIA, 0x31);
    }
   }
   WRITE_RADIO_REG3(pi, RADIO_2057, TX, core, IQCAL_VCM_HG,
      0);
   WRITE_RADIO_REG3(pi, RADIO_2057, TX, core, IQCAL_IDAC,
      0);
   WRITE_RADIO_REG3(pi, RADIO_2057, TX, core, TSSI_VCM,
      0x3);
   WRITE_RADIO_REG3(pi, RADIO_2057, TX, core, TSSI_MISC1,
      0x0);
  }
 } else {
  WRITE_RADIO_SYN(pi, RADIO_2056, RESERVED_ADDR31,
    (CHSPEC_IS2G(pi->radio_chanspec)) ? 0x128 :
    0x80);
  WRITE_RADIO_SYN(pi, RADIO_2056, RESERVED_ADDR30, 0x0);
  WRITE_RADIO_SYN(pi, RADIO_2056, GPIO_MASTER1, 0x29);

  for (core = 0; core < pi->pubpi.phy_corenum; core++) {
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, IQCAL_VCM_HG,
      0x0);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, IQCAL_IDAC,
      0x0);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, TSSI_VCM,
      0x3);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, TX_AMP_DET,
      0x0);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, TSSI_MISC1,
      0x8);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, TSSI_MISC2,
      0x0);
   WRITE_RADIO_REG2(pi, RADIO_2056, TX, core, TSSI_MISC3,
      0x0);

   if (CHSPEC_IS2G(pi->radio_chanspec)) {
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TX_SSI_MASTER, 0x5);

    if (pi->pubpi.radiorev != 5)
     WRITE_RADIO_REG2(pi, RADIO_2056, TX,
        core, TSSIA, 0x0);
    if (NREV_GE(pi->pubpi.phy_rev, 5))
     WRITE_RADIO_REG2(pi, RADIO_2056, TX,
        core, TSSIG, 0x31);
    else
     WRITE_RADIO_REG2(pi, RADIO_2056, TX,
        core, TSSIG, 0x11);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TX_SSI_MUX, 0xe);
   } else {
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TX_SSI_MASTER, 0x9);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TSSIA, 0x31);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TSSIG, 0x0);
    WRITE_RADIO_REG2(pi, RADIO_2056, TX, core,
       TX_SSI_MUX, 0xc);
   }
  }
 }
}
