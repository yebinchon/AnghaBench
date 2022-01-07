
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BRCMS_N_PREAMBLE_GF ;
 int RX_GF_MM_AUTO ;
 int RX_GF_OR_MM ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_update_mimoconfig_nphy(struct brcms_phy *pi, s32 preamble)
{
 bool gf_preamble = 0;
 u16 val;

 if (preamble == BRCMS_N_PREAMBLE_GF)
  gf_preamble = 1;

 val = read_phy_reg(pi, 0xed);

 val |= RX_GF_MM_AUTO;
 val &= ~RX_GF_OR_MM;
 if (gf_preamble)
  val |= RX_GF_OR_MM;

 write_phy_reg(pi, 0xed, val);
}
