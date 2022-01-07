
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int val; int reg; } ;


 int rtl_writephy (struct rtl8169_private*,int ,int ) ;

__attribute__((used)) static void rtl_writephy_batch(struct rtl8169_private *tp,
          const struct phy_reg *regs, int len)
{
 while (len-- > 0) {
  rtl_writephy(tp, regs->reg, regs->val);
  regs++;
 }
}
