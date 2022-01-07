
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_1__* sh; int d11core; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_2__ {int physhim; } ;


 int D11REGOFFS (int ) ;
 int LCN_VBAT_SCALE_DEN ;
 int LCN_VBAT_SCALE_NOM ;
 int MCTL_EN_MAC ;
 int VBATSENSE ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_lcnphy_vbat_temp_sense_setup (struct brcms_phy*,int ) ;

s8 wlc_lcnphy_vbatsense(struct brcms_phy *pi, bool mode)
{
 u16 vbatsenseval;
 s32 avg = 0;
 bool suspend = 0;

 if (mode == 1) {
  suspend = (0 == (bcma_read32(pi->d11core,
          D11REGOFFS(maccontrol)) &
     MCTL_EN_MAC));
  if (!suspend)
   wlapi_suspend_mac_and_wait(pi->sh->physhim);
  wlc_lcnphy_vbat_temp_sense_setup(pi, VBATSENSE);
 }

 vbatsenseval = read_phy_reg(pi, 0x475) & 0x1FF;

 if (vbatsenseval > 255)
  avg = (s32) (vbatsenseval - 512);
 else
  avg = (s32) vbatsenseval;

 avg = (avg * LCN_VBAT_SCALE_NOM +
   (LCN_VBAT_SCALE_DEN >> 1)) / LCN_VBAT_SCALE_DEN;

 if (mode == 1) {
  if (!suspend)
   wlapi_enable_mac(pi->sh->physhim);
 }
 return (s8) avg;
}
