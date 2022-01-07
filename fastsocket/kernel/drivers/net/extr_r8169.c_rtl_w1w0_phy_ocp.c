
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int r8168_phy_ocp_read (struct rtl8169_private*,int) ;
 int r8168_phy_ocp_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_w1w0_phy_ocp(struct rtl8169_private *tp, int reg, int p, int m)
{
 int val;

 val = r8168_phy_ocp_read(tp, reg);
 r8168_phy_ocp_write(tp, reg, (val | p) & ~m);
}
