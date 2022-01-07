
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_6__ {int life_time; } ;
struct TYPE_8__ {int tx_flags; int rate_n_flags; TYPE_2__ stop_time; int sta_id; int len; } ;
struct il_tx_beacon_cmd {TYPE_4__ tx; scalar_t__ frame; } ;
struct TYPE_7__ {int valid_tx_ant; int bcast_id; } ;
struct il_priv {int mgmt_tx_ant; TYPE_3__ hw_params; int beacon_enabled; int mutex; } ;
struct TYPE_5__ {struct il_tx_beacon_cmd beacon; } ;
struct il_frame {TYPE_1__ u; } ;


 scalar_t__ BIT (int ) ;
 int IL_ERR (char*) ;
 scalar_t__ IL_FIRST_CCK_RATE ;
 scalar_t__ IL_LAST_CCK_RATE ;
 scalar_t__ MAX_MPDU_SIZE ;
 scalar_t__ RATE_MCS_ANT_POS ;
 scalar_t__ RATE_MCS_CCK_MSK ;
 int TX_CMD_FLG_SEQ_CTL_MSK ;
 int TX_CMD_FLG_STA_RATE_MSK ;
 int TX_CMD_FLG_TSF_MSK ;
 int TX_CMD_LIFE_TIME_INFINITE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ il4965_fill_beacon_frame (struct il_priv*,scalar_t__,int) ;
 int il4965_set_beacon_tim (struct il_priv*,struct il_tx_beacon_cmd*,int *,scalar_t__) ;
 int il4965_toggle_tx_ant (struct il_priv*,int *,int ) ;
 scalar_t__ il_get_lowest_plcp (struct il_priv*) ;
 int lockdep_assert_held (int *) ;
 int memset (struct il_tx_beacon_cmd*,int ,int) ;

__attribute__((used)) static unsigned int
il4965_hw_get_beacon_cmd(struct il_priv *il, struct il_frame *frame)
{
 struct il_tx_beacon_cmd *tx_beacon_cmd;
 u32 frame_size;
 u32 rate_flags;
 u32 rate;





 lockdep_assert_held(&il->mutex);

 if (!il->beacon_enabled) {
  IL_ERR("Trying to build beacon without beaconing enabled\n");
  return 0;
 }


 tx_beacon_cmd = &frame->u.beacon;
 memset(tx_beacon_cmd, 0, sizeof(*tx_beacon_cmd));


 frame_size =
     il4965_fill_beacon_frame(il, tx_beacon_cmd->frame,
         sizeof(frame->u) - sizeof(*tx_beacon_cmd));
 if (WARN_ON_ONCE(frame_size > MAX_MPDU_SIZE))
  return 0;
 if (!frame_size)
  return 0;


 tx_beacon_cmd->tx.len = cpu_to_le16((u16) frame_size);
 tx_beacon_cmd->tx.sta_id = il->hw_params.bcast_id;
 tx_beacon_cmd->tx.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;
 tx_beacon_cmd->tx.tx_flags =
     TX_CMD_FLG_SEQ_CTL_MSK | TX_CMD_FLG_TSF_MSK |
     TX_CMD_FLG_STA_RATE_MSK;


 il4965_set_beacon_tim(il, tx_beacon_cmd, (u8 *) tx_beacon_cmd->frame,
         frame_size);


 rate = il_get_lowest_plcp(il);
 il4965_toggle_tx_ant(il, &il->mgmt_tx_ant, il->hw_params.valid_tx_ant);
 rate_flags = BIT(il->mgmt_tx_ant) << RATE_MCS_ANT_POS;
 if ((rate >= IL_FIRST_CCK_RATE) && (rate <= IL_LAST_CCK_RATE))
  rate_flags |= RATE_MCS_CCK_MSK;
 tx_beacon_cmd->tx.rate_n_flags = cpu_to_le32(rate | rate_flags);

 return sizeof(*tx_beacon_cmd) + frame_size;
}
