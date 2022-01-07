
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct phy_reg const*) ;
 int rtl_patchphy (struct rtl8169_private*,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*,int ) ;

__attribute__((used)) static void rtl8102e_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {
  { 0x1f, 0x0003 },
  { 0x08, 0x441d },
  { 0x01, 0x9100 },
  { 0x1f, 0x0000 }
 };

 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_patchphy(tp, 0x11, 1 << 12);
 rtl_patchphy(tp, 0x19, 1 << 13);
 rtl_patchphy(tp, 0x10, 1 << 15);

 rtl_writephy_batch(tp, phy_reg_init, ARRAY_SIZE(phy_reg_init));
}
