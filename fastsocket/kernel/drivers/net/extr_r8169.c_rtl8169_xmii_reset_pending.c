
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 unsigned int BMCR_RESET ;
 int MII_BMCR ;
 unsigned int rtl_readphy (struct rtl8169_private*,int ) ;

__attribute__((used)) static unsigned int rtl8169_xmii_reset_pending(struct rtl8169_private *tp)
{
 return rtl_readphy(tp, MII_BMCR) & BMCR_RESET;
}
