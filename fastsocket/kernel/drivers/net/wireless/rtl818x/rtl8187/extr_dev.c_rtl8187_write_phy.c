
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int * PHY; } ;


 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int) ;

void rtl8187_write_phy(struct ieee80211_hw *dev, u8 addr, u32 data)
{
 struct rtl8187_priv *priv = dev->priv;

 data <<= 8;
 data |= addr | 0x80;

 rtl818x_iowrite8(priv, &priv->map->PHY[3], (data >> 24) & 0xFF);
 rtl818x_iowrite8(priv, &priv->map->PHY[2], (data >> 16) & 0xFF);
 rtl818x_iowrite8(priv, &priv->map->PHY[1], (data >> 8) & 0xFF);
 rtl818x_iowrite8(priv, &priv->map->PHY[0], data & 0xFF);
}
