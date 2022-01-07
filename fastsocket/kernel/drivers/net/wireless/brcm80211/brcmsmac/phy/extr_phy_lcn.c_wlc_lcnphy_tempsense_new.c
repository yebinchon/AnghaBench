
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_1__* sh; int d11core; } ;
typedef int s16 ;
struct TYPE_2__ {int physhim; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int TEMPSENSE ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int udelay (int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_lcnphy_vbat_temp_sense_setup (struct brcms_phy*,int ) ;

s16 wlc_lcnphy_tempsense_new(struct brcms_phy *pi, bool mode)
{
 u16 tempsenseval1, tempsenseval2;
 s16 avg = 0;
 bool suspend = 0;

 if (mode == 1) {
  suspend = (0 == (bcma_read32(pi->d11core,
          D11REGOFFS(maccontrol)) &
     MCTL_EN_MAC));
  if (!suspend)
   wlapi_suspend_mac_and_wait(pi->sh->physhim);
  wlc_lcnphy_vbat_temp_sense_setup(pi, TEMPSENSE);
 }
 tempsenseval1 = read_phy_reg(pi, 0x476) & 0x1FF;
 tempsenseval2 = read_phy_reg(pi, 0x477) & 0x1FF;

 if (tempsenseval1 > 255)
  avg = (s16) (tempsenseval1 - 512);
 else
  avg = (s16) tempsenseval1;

 if (tempsenseval2 > 255)
  avg += (s16) (tempsenseval2 - 512);
 else
  avg += (s16) tempsenseval2;

 avg /= 2;

 if (mode == 1) {

  mod_phy_reg(pi, 0x448, (0x1 << 14), (1) << 14);

  udelay(100);
  mod_phy_reg(pi, 0x448, (0x1 << 14), (0) << 14);

  if (!suspend)
   wlapi_enable_mac(pi->sh->physhim);
 }
 return avg;
}
