
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy {int dummy; } ;


 int RADIO_2064_REG056 ;
 int RADIO_2064_REG057 ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 scalar_t__ read_radio_reg (struct brcms_phy*,int ) ;
 int udelay (int) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

void wlc_2064_vco_cal(struct brcms_phy *pi)
{
 u8 calnrst;

 mod_radio_reg(pi, RADIO_2064_REG057, 1 << 3, 1 << 3);
 calnrst = (u8) read_radio_reg(pi, RADIO_2064_REG056) & 0xf8;
 write_radio_reg(pi, RADIO_2064_REG056, calnrst);
 udelay(1);
 write_radio_reg(pi, RADIO_2064_REG056, calnrst | 0x03);
 udelay(1);
 write_radio_reg(pi, RADIO_2064_REG056, calnrst | 0x07);
 udelay(300);
 mod_radio_reg(pi, RADIO_2064_REG057, 1 << 3, 0);
}
