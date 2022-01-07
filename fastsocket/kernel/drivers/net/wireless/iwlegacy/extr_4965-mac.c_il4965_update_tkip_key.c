
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct il_priv {int sta_lock; TYPE_3__* stations; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
struct TYPE_6__ {int modify_mask; } ;
struct TYPE_5__ {size_t tkip_rx_tsc_byte2; int * tkip_rx_ttak; } ;
struct TYPE_8__ {int mode; TYPE_2__ sta; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_4__ sta; } ;


 int CMD_ASYNC ;
 size_t IL_INVALID_STATION ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_KEY_MASK ;
 int cpu_to_le16 (int ) ;
 scalar_t__ il_scan_cancel (struct il_priv*) ;
 int il_send_add_sta (struct il_priv*,TYPE_4__*,int ) ;
 size_t il_sta_id_or_broadcast (struct il_priv*,struct ieee80211_sta*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il4965_update_tkip_key(struct il_priv *il, struct ieee80211_key_conf *keyconf,
         struct ieee80211_sta *sta, u32 iv32, u16 *phase1key)
{
 u8 sta_id;
 unsigned long flags;
 int i;

 if (il_scan_cancel(il)) {


  return;
 }

 sta_id = il_sta_id_or_broadcast(il, sta);
 if (sta_id == IL_INVALID_STATION)
  return;

 spin_lock_irqsave(&il->sta_lock, flags);

 il->stations[sta_id].sta.key.tkip_rx_tsc_byte2 = (u8) iv32;

 for (i = 0; i < 5; i++)
  il->stations[sta_id].sta.key.tkip_rx_ttak[i] =
      cpu_to_le16(phase1key[i]);

 il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_KEY_MASK;
 il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;

 il_send_add_sta(il, &il->stations[sta_id].sta, CMD_ASYNC);

 spin_unlock_irqrestore(&il->sta_lock, flags);
}
