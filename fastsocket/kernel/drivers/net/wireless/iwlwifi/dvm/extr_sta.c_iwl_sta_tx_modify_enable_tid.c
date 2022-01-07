
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_priv {int sta_lock; TYPE_2__* stations; int mutex; } ;
struct iwl_addsta_cmd {int dummy; } ;
struct TYPE_4__ {int modify_mask; } ;
struct TYPE_6__ {int mode; int tid_disable_tx; TYPE_1__ sta; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;


 int CMD_SYNC ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_TID_DISABLE_TX ;
 int cpu_to_le16 (int) ;
 int iwl_send_add_sta (struct iwl_priv*,struct iwl_addsta_cmd*,int ) ;
 int lockdep_assert_held (int *) ;
 int memcpy (struct iwl_addsta_cmd*,TYPE_3__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_sta_tx_modify_enable_tid(struct iwl_priv *priv, int sta_id, int tid)
{
 struct iwl_addsta_cmd sta_cmd;

 lockdep_assert_held(&priv->mutex);


 spin_lock_bh(&priv->sta_lock);
 priv->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_TID_DISABLE_TX;
 priv->stations[sta_id].sta.tid_disable_tx &= cpu_to_le16(~(1 << tid));
 priv->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
 memcpy(&sta_cmd, &priv->stations[sta_id].sta, sizeof(struct iwl_addsta_cmd));
 spin_unlock_bh(&priv->sta_lock);

 return iwl_send_add_sta(priv, &sta_cmd, CMD_SYNC);
}
