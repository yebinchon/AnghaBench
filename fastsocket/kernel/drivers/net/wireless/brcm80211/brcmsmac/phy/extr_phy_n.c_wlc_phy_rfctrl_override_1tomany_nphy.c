
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 int NPHY_REV7_RFCTRLOVERRIDE_ID0 ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID1 ;
 int NPHY_REV7_RFCTRLOVERRIDE_ID2 ;





 scalar_t__ NREV_GE (int ,int) ;
 int wlc_phy_rfctrl_override_nphy_rev7 (struct brcms_phy*,int,int,int ,int ,int ) ;

__attribute__((used)) static void
wlc_phy_rfctrl_override_1tomany_nphy(struct brcms_phy *pi, u16 cmd, u16 value,
         u8 core_mask, u8 off)
{
 u16 rfmxgain = 0, lpfgain = 0;
 u16 tgain = 0;

 if (NREV_GE(pi->pubpi.phy_rev, 7)) {

  switch (cmd) {
  case 130:
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 5),
    value, core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 4), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 3), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   break;
  case 132:
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 2),
    value, core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 1), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 0), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 1), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID2);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 11), 0,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   break;
  case 129:
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 2),
    value, core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 1), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 0), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID2);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 2), value,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID2);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 11), 1,
    core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID1);
   break;
  case 131:
   rfmxgain = value & 0x000ff;
   lpfgain = value & 0x0ff00;
   lpfgain = lpfgain >> 8;

   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 11),
    rfmxgain, core_mask,
    off,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x3 << 13),
    lpfgain, core_mask,
    off,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
   break;
  case 128:
   tgain = value & 0x7fff;
   lpfgain = value & 0x8000;
   lpfgain = lpfgain >> 14;

   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 12),
    tgain, core_mask, off,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
   wlc_phy_rfctrl_override_nphy_rev7(
    pi, (0x1 << 13),
    lpfgain, core_mask,
    off,
    NPHY_REV7_RFCTRLOVERRIDE_ID0);
   break;
  }
 }
}
