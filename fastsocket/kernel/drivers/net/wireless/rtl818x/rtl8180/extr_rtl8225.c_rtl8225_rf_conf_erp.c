
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; } ;
struct TYPE_2__ {int CW_VAL; int EIFS; int DIFS; int SIFS; int SLOT; } ;


 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static void rtl8225_rf_conf_erp(struct ieee80211_hw *dev,
    struct ieee80211_bss_conf *info)
{
 struct rtl8180_priv *priv = dev->priv;

 if (info->use_short_slot) {
  rtl818x_iowrite8(priv, &priv->map->SLOT, 0x9);
  rtl818x_iowrite8(priv, &priv->map->SIFS, 0x22);
  rtl818x_iowrite8(priv, &priv->map->DIFS, 0x14);
  rtl818x_iowrite8(priv, &priv->map->EIFS, 81);
  rtl818x_iowrite8(priv, &priv->map->CW_VAL, 0x73);
 } else {
  rtl818x_iowrite8(priv, &priv->map->SLOT, 0x14);
  rtl818x_iowrite8(priv, &priv->map->SIFS, 0x44);
  rtl818x_iowrite8(priv, &priv->map->DIFS, 0x24);
  rtl818x_iowrite8(priv, &priv->map->EIFS, 81);
  rtl818x_iowrite8(priv, &priv->map->CW_VAL, 0xa5);
 }
}
