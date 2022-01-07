
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int modify_mask; } ;
struct TYPE_4__ {int mode; int rate_n_flags; TYPE_1__ sta; } ;
struct il_station_entry {TYPE_2__ sta; } ;
struct il_priv {int sta_lock; struct il_station_entry* stations; } ;


 int CMD_ASYNC ;
 int D_RATE (char*,int,int ) ;
 int IL_INVALID_STATION ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_TX_RATE_MSK ;
 int cpu_to_le16 (int ) ;
 int il_send_add_sta (struct il_priv*,TYPE_2__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8
il3945_sync_sta(struct il_priv *il, int sta_id, u16 tx_rate)
{
 unsigned long flags_spin;
 struct il_station_entry *station;

 if (sta_id == IL_INVALID_STATION)
  return IL_INVALID_STATION;

 spin_lock_irqsave(&il->sta_lock, flags_spin);
 station = &il->stations[sta_id];

 station->sta.sta.modify_mask = STA_MODIFY_TX_RATE_MSK;
 station->sta.rate_n_flags = cpu_to_le16(tx_rate);
 station->sta.mode = STA_CONTROL_MODIFY_MSK;
 il_send_add_sta(il, &station->sta, CMD_ASYNC);
 spin_unlock_irqrestore(&il->sta_lock, flags_spin);

 D_RATE("SCALE sync station %d to rate %d\n", sta_id, tx_rate);
 return sta_id;
}
