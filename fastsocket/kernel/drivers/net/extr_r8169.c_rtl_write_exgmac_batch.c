
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct exgmac_reg {int val; int mask; int addr; } ;


 int ERIAR_EXGMAC ;
 int rtl_eri_write (struct rtl8169_private*,int ,int ,int ,int ) ;

__attribute__((used)) static void rtl_write_exgmac_batch(struct rtl8169_private *tp,
       const struct exgmac_reg *r, int len)
{
 while (len-- > 0) {
  rtl_eri_write(tp, r->addr, r->mask, r->val, ERIAR_EXGMAC);
  r++;
 }
}
