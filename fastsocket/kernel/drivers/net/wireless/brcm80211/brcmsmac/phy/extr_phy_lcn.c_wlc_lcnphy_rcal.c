
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy {int dummy; } ;


 int RADIO_2064_REG004 ;
 int RADIO_2064_REG057 ;
 int RADIO_2064_REG05B ;
 int RADIO_2064_REG05C ;
 int RADIO_2064_REG078 ;
 int RADIO_2064_REG120 ;
 int RADIO_2064_REG129 ;
 int SPINWAIT (int,int) ;
 int and_radio_reg (struct brcms_phy*,int ,int) ;
 int mdelay (int) ;
 int or_radio_reg (struct brcms_phy*,int ,int) ;
 scalar_t__ read_radio_reg (struct brcms_phy*,int ) ;
 scalar_t__ wlc_radio_2064_rcal_done (struct brcms_phy*) ;

__attribute__((used)) static void wlc_lcnphy_rcal(struct brcms_phy *pi)
{
 u8 rcal_value;

 and_radio_reg(pi, RADIO_2064_REG05B, 0xfD);

 or_radio_reg(pi, RADIO_2064_REG004, 0x40);
 or_radio_reg(pi, RADIO_2064_REG120, 0x10);

 or_radio_reg(pi, RADIO_2064_REG078, 0x80);
 or_radio_reg(pi, RADIO_2064_REG129, 0x02);

 or_radio_reg(pi, RADIO_2064_REG057, 0x01);

 or_radio_reg(pi, RADIO_2064_REG05B, 0x02);
 mdelay(5);
 SPINWAIT(!wlc_radio_2064_rcal_done(pi), 10 * 1000 * 1000);

 if (wlc_radio_2064_rcal_done(pi)) {
  rcal_value = (u8) read_radio_reg(pi, RADIO_2064_REG05C);
  rcal_value = rcal_value & 0x1f;
 }

 and_radio_reg(pi, RADIO_2064_REG05B, 0xfD);

 and_radio_reg(pi, RADIO_2064_REG057, 0xFE);
}
