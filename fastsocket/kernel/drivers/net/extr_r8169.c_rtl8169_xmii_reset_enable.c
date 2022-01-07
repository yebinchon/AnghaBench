
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 unsigned int BMCR_RESET ;
 int MII_BMCR ;
 unsigned int rtl_readphy (struct rtl8169_private*,int ) ;
 int rtl_writephy (struct rtl8169_private*,int ,unsigned int) ;

__attribute__((used)) static void rtl8169_xmii_reset_enable(struct rtl8169_private *tp)
{
 unsigned int val;

 val = rtl_readphy(tp, MII_BMCR) | BMCR_RESET;
 rtl_writephy(tp, MII_BMCR, val & 0xffff);
}
