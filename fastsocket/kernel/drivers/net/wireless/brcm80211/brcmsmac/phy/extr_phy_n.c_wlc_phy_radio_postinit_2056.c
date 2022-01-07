
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy {scalar_t__ phy_init_por; TYPE_1__* sh; } ;
struct TYPE_2__ {int boardflags2; } ;


 int BFL2_LEGACY ;
 int BFL2_XTALBUFOUTEN ;
 int RADIO_2056_SYN_COM_CTRL ;
 int RADIO_2056_SYN_COM_PU ;
 int RADIO_2056_SYN_COM_RESET ;
 int RADIO_2056_SYN_PLL_MAST2 ;
 int RADIO_2056_SYN_RCCAL_CTRL0 ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int udelay (int) ;
 int wlc_phy_radio205x_rcal (struct brcms_phy*) ;

__attribute__((used)) static void wlc_phy_radio_postinit_2056(struct brcms_phy *pi)
{
 mod_radio_reg(pi, RADIO_2056_SYN_COM_CTRL, 0xb, 0xb);

 mod_radio_reg(pi, RADIO_2056_SYN_COM_PU, 0x2, 0x2);
 mod_radio_reg(pi, RADIO_2056_SYN_COM_RESET, 0x2, 0x2);
 udelay(1000);
 mod_radio_reg(pi, RADIO_2056_SYN_COM_RESET, 0x2, 0x0);

 if ((pi->sh->boardflags2 & BFL2_LEGACY)
     || (pi->sh->boardflags2 & BFL2_XTALBUFOUTEN))
  mod_radio_reg(pi, RADIO_2056_SYN_PLL_MAST2, 0xf4, 0x0);
 else
  mod_radio_reg(pi, RADIO_2056_SYN_PLL_MAST2, 0xfc, 0x0);

 mod_radio_reg(pi, RADIO_2056_SYN_RCCAL_CTRL0, 0x1, 0x0);

 if (pi->phy_init_por)
  wlc_phy_radio205x_rcal(pi);
}
