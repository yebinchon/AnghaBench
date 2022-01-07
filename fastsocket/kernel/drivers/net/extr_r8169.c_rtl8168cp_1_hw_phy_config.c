
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct phy_reg const*) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*,int ) ;

__attribute__((used)) static void rtl8168cp_1_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {
  { 0x1f, 0x0000 },
  { 0x1d, 0x0f00 },
  { 0x1f, 0x0002 },
  { 0x0c, 0x1ec8 },
  { 0x1f, 0x0000 }
 };

 rtl_writephy_batch(tp, phy_reg_init, ARRAY_SIZE(phy_reg_init));
}
