
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct il_priv {int sta_lock; TYPE_2__* stations; int mutex; } ;
struct il_addsta_cmd {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int modify_mask; } ;
struct TYPE_6__ {int mode; scalar_t__ remove_immediate_ba_tid; TYPE_1__ sta; scalar_t__ station_flags_msk; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;


 int CMD_SYNC ;
 int ENXIO ;
 int IL_ERR (char*,int) ;
 int IL_INVALID_STATION ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_DELBA_TID_MSK ;
 int il_send_add_sta (struct il_priv*,struct il_addsta_cmd*,int ) ;
 int il_sta_id (struct ieee80211_sta*) ;
 int lockdep_assert_held (int *) ;
 int memcpy (struct il_addsta_cmd*,TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_sta_rx_agg_stop(struct il_priv *il, struct ieee80211_sta *sta, int tid)
{
 unsigned long flags;
 int sta_id;
 struct il_addsta_cmd sta_cmd;

 lockdep_assert_held(&il->mutex);

 sta_id = il_sta_id(sta);
 if (sta_id == IL_INVALID_STATION) {
  IL_ERR("Invalid station for AGG tid %d\n", tid);
  return -ENXIO;
 }

 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].sta.station_flags_msk = 0;
 il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_DELBA_TID_MSK;
 il->stations[sta_id].sta.remove_immediate_ba_tid = (u8) tid;
 il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
 memcpy(&sta_cmd, &il->stations[sta_id].sta,
        sizeof(struct il_addsta_cmd));
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return il_send_add_sta(il, &sta_cmd, CMD_SYNC);
}
