
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int RFPinsOutput; int RFPinsSelect; int RFPinsEnable; int RFPinsInput; } ;


 int rtl818x_ioread16 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static u16 rtl8225_read(struct ieee80211_hw *dev, u8 addr)
{
 struct rtl8187_priv *priv = dev->priv;
 u16 reg80, reg82, reg84, out;
 int i;

 reg80 = rtl818x_ioread16(priv, &priv->map->RFPinsOutput);
 reg82 = rtl818x_ioread16(priv, &priv->map->RFPinsEnable);
 reg84 = rtl818x_ioread16(priv, &priv->map->RFPinsSelect);

 reg80 &= ~0xF;

 rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, reg82 | 0x000F);
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84 | 0x000F);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 udelay(4);
 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80);
 udelay(5);

 for (i = 4; i >= 0; i--) {
  u16 reg = reg80 | ((addr >> i) & 1);

  if (!(i & 1)) {
   rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg);
   udelay(1);
  }

  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg | (1 << 1));
  udelay(2);
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg | (1 << 1));
  udelay(2);

  if (i & 1) {
   rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg);
   udelay(1);
  }
 }

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
     reg80 | (1 << 3) | (1 << 1));
 udelay(2);
 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
     reg80 | (1 << 3));
 udelay(2);
 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
     reg80 | (1 << 3));
 udelay(2);

 out = 0;
 for (i = 11; i >= 0; i--) {
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg80 | (1 << 3));
  udelay(1);
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg80 | (1 << 3) | (1 << 1));
  udelay(2);
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg80 | (1 << 3) | (1 << 1));
  udelay(2);
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg80 | (1 << 3) | (1 << 1));
  udelay(2);

  if (rtl818x_ioread16(priv, &priv->map->RFPinsInput) & (1 << 1))
   out |= 1 << i;

  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
      reg80 | (1 << 3));
  udelay(2);
 }

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput,
     reg80 | (1 << 3) | (1 << 2));
 udelay(2);

 rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, reg82);
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84);
 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, 0x03A0);

 return out;
}
