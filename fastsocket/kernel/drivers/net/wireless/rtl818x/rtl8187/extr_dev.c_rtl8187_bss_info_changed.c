
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int work; } ;
struct rtl8187_vif {TYPE_2__ beacon_work; scalar_t__ enable_beacon; } ;
struct rtl8187_priv {int conf_mutex; TYPE_1__* map; scalar_t__ is_rtl8187b; } ;
struct ieee80211_vif {scalar_t__ type; int drv_priv; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct ieee80211_bss_conf {scalar_t__ enable_beacon; int use_short_preamble; int use_short_slot; int * bssid; } ;
struct TYPE_3__ {int MSR; int * BSSID; } ;


 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RTL818X_MSR_ADHOC ;
 int RTL818X_MSR_ENEDCA ;
 int RTL818X_MSR_INFRA ;
 int RTL818X_MSR_NO_LINK ;
 int cancel_delayed_work_sync (TYPE_2__*) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8187_conf_erp (struct rtl8187_priv*,int ,int ) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void rtl8187_bss_info_changed(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *info,
         u32 changed)
{
 struct rtl8187_priv *priv = dev->priv;
 struct rtl8187_vif *vif_priv;
 int i;
 u8 reg;

 vif_priv = (struct rtl8187_vif *)&vif->drv_priv;

 if (changed & BSS_CHANGED_BSSID) {
  mutex_lock(&priv->conf_mutex);
  for (i = 0; i < ETH_ALEN; i++)
   rtl818x_iowrite8(priv, &priv->map->BSSID[i],
      info->bssid[i]);

  if (priv->is_rtl8187b)
   reg = RTL818X_MSR_ENEDCA;
  else
   reg = 0;

  if (is_valid_ether_addr(info->bssid)) {
   if (vif->type == NL80211_IFTYPE_ADHOC)
    reg |= RTL818X_MSR_ADHOC;
   else
    reg |= RTL818X_MSR_INFRA;
  }
  else
   reg |= RTL818X_MSR_NO_LINK;

  rtl818x_iowrite8(priv, &priv->map->MSR, reg);

  mutex_unlock(&priv->conf_mutex);
 }

 if (changed & (BSS_CHANGED_ERP_SLOT | BSS_CHANGED_ERP_PREAMBLE))
  rtl8187_conf_erp(priv, info->use_short_slot,
     info->use_short_preamble);

 if (changed & BSS_CHANGED_BEACON_ENABLED)
  vif_priv->enable_beacon = info->enable_beacon;

 if (changed & (BSS_CHANGED_BEACON_ENABLED | BSS_CHANGED_BEACON)) {
  cancel_delayed_work_sync(&vif_priv->beacon_work);
  if (vif_priv->enable_beacon)
   schedule_work(&vif_priv->beacon_work.work);
 }

}
