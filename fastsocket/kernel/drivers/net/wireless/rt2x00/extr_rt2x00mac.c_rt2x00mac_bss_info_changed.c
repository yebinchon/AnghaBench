
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_intf {int enable_beacon; int beacon_skb_mutex; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct rt2x00_dev {int intf_beaconing; int flags; int intf_associated; TYPE_1__ link; int bcn; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct ieee80211_bss_conf {int qos; scalar_t__ assoc; scalar_t__ enable_beacon; int bssid; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int BSS_CHANGED_QOS ;
 int CONFIG_QOS_DISABLED ;
 int DEVICE_STATE_PRESENT ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00leds_led_assoc (struct rt2x00_dev*,int) ;
 int rt2x00lib_config_erp (struct rt2x00_dev*,struct rt2x00_intf*,struct ieee80211_bss_conf*,int) ;
 int rt2x00lib_config_intf (struct rt2x00_dev*,struct rt2x00_intf*,int ,int *,int ) ;
 int rt2x00queue_clear_beacon (struct rt2x00_dev*,struct ieee80211_vif*) ;
 int rt2x00queue_start_queue (int ) ;
 int rt2x00queue_stop_queue (int ) ;
 int rt2x00queue_update_beacon (struct rt2x00_dev*,struct ieee80211_vif*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

void rt2x00mac_bss_info_changed(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_bss_conf *bss_conf,
    u32 changes)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct rt2x00_intf *intf = vif_to_intf(vif);





 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  return;




 if (changes & BSS_CHANGED_BSSID)
  rt2x00lib_config_intf(rt2x00dev, intf, vif->type, ((void*)0),
          bss_conf->bssid);





 if (changes & BSS_CHANGED_BEACON && rt2x00_is_usb(rt2x00dev))
  rt2x00queue_update_beacon(rt2x00dev, vif);




 if (changes & BSS_CHANGED_BEACON_ENABLED) {
  if (!bss_conf->enable_beacon && intf->enable_beacon) {
   rt2x00queue_clear_beacon(rt2x00dev, vif);
   rt2x00dev->intf_beaconing--;
   intf->enable_beacon = 0;

   if (rt2x00dev->intf_beaconing == 0) {




    mutex_lock(&intf->beacon_skb_mutex);
    rt2x00queue_stop_queue(rt2x00dev->bcn);
    mutex_unlock(&intf->beacon_skb_mutex);
   }


  } else if (bss_conf->enable_beacon && !intf->enable_beacon) {
   rt2x00dev->intf_beaconing++;
   intf->enable_beacon = 1;

   if (rt2x00dev->intf_beaconing == 1) {




    mutex_lock(&intf->beacon_skb_mutex);
    rt2x00queue_start_queue(rt2x00dev->bcn);
    mutex_unlock(&intf->beacon_skb_mutex);
   }
  }
 }







 if (changes & BSS_CHANGED_ASSOC) {
  rt2x00dev->link.count = 0;

  if (bss_conf->assoc)
   rt2x00dev->intf_associated++;
  else
   rt2x00dev->intf_associated--;

  rt2x00leds_led_assoc(rt2x00dev, !!rt2x00dev->intf_associated);

  clear_bit(CONFIG_QOS_DISABLED, &rt2x00dev->flags);
 }






 if (changes & BSS_CHANGED_QOS && !bss_conf->qos)
  set_bit(CONFIG_QOS_DISABLED, &rt2x00dev->flags);





 if (changes & (BSS_CHANGED_ERP_CTS_PROT | BSS_CHANGED_ERP_PREAMBLE |
         BSS_CHANGED_ERP_SLOT | BSS_CHANGED_BASIC_RATES |
         BSS_CHANGED_BEACON_INT | BSS_CHANGED_HT))
  rt2x00lib_config_erp(rt2x00dev, intf, bss_conf, changes);
}
