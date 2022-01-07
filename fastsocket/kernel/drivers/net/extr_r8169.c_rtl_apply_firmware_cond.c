
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rtl8169_private {int dev; } ;


 int hw ;
 int netif_warn (struct rtl8169_private*,int ,int ,char*) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 scalar_t__ rtl_readphy (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl_apply_firmware_cond(struct rtl8169_private *tp, u8 reg, u16 val)
{
 if (rtl_readphy(tp, reg) != val)
  netif_warn(tp, hw, tp->dev, "chipset not ready for firmware\n");
 else
  rtl_apply_firmware(tp);
}
