
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ ocp_base; } ;


 scalar_t__ OCP_STD_PHY_BASE ;
 int r8168_phy_ocp_read (struct rtl8169_private*,scalar_t__) ;

__attribute__((used)) static int r8168g_mdio_read(struct rtl8169_private *tp, int reg)
{
 if (tp->ocp_base != OCP_STD_PHY_BASE)
  reg -= 0x10;

 return r8168_phy_ocp_read(tp, tp->ocp_base + reg * 2);
}
