
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl818x_rf_ops {int dummy; } ;
struct rtl8187_priv {int is_rtl8187b; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 struct rtl818x_rf_ops const rtl8225_ops ;
 int rtl8225_read (struct ieee80211_hw*,int) ;
 int rtl8225_write (struct ieee80211_hw*,int ,int) ;
 struct rtl818x_rf_ops const rtl8225z2_b_ops ;
 struct rtl818x_rf_ops const rtl8225z2_ops ;

const struct rtl818x_rf_ops * rtl8187_detect_rf(struct ieee80211_hw *dev)
{
 u16 reg8, reg9;
 struct rtl8187_priv *priv = dev->priv;

 if (!priv->is_rtl8187b) {
  rtl8225_write(dev, 0, 0x1B7);

  reg8 = rtl8225_read(dev, 8);
  reg9 = rtl8225_read(dev, 9);

  rtl8225_write(dev, 0, 0x0B7);

  if (reg8 != 0x588 || reg9 != 0x700)
   return &rtl8225_ops;

  return &rtl8225z2_ops;
 } else
  return &rtl8225z2_b_ops;
}
