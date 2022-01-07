
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int bcast_id; } ;
struct il_priv {TYPE_1__ hw_params; } ;
struct TYPE_5__ {int life_time; } ;
struct TYPE_6__ {int tx_flags; int* supp_rates; int rate; int len; TYPE_2__ stop_time; int sta_id; } ;
struct il3945_tx_beacon_cmd {TYPE_3__ tx; int frame; } ;
struct il3945_frame {int u; } ;


 int BUG_ON (int) ;
 int IL_CCK_BASIC_RATES_MASK ;
 int IL_FIRST_OFDM_RATE ;
 int IL_OFDM_BASIC_RATES_MASK ;
 unsigned int MAX_MPDU_SIZE ;
 int TX_CMD_FLG_SEQ_CTL_MSK ;
 int TX_CMD_FLG_TSF_MSK ;
 int TX_CMD_LIFE_TIME_INFINITE ;
 int cpu_to_le16 (int ) ;
 unsigned int il3945_fill_beacon_frame (struct il_priv*,int ,int) ;
 int memset (struct il3945_tx_beacon_cmd*,int ,int) ;

unsigned int
il3945_hw_get_beacon_cmd(struct il_priv *il, struct il3945_frame *frame,
    u8 rate)
{
 struct il3945_tx_beacon_cmd *tx_beacon_cmd;
 unsigned int frame_size;

 tx_beacon_cmd = (struct il3945_tx_beacon_cmd *)&frame->u;
 memset(tx_beacon_cmd, 0, sizeof(*tx_beacon_cmd));

 tx_beacon_cmd->tx.sta_id = il->hw_params.bcast_id;
 tx_beacon_cmd->tx.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

 frame_size =
     il3945_fill_beacon_frame(il, tx_beacon_cmd->frame,
         sizeof(frame->u) - sizeof(*tx_beacon_cmd));

 BUG_ON(frame_size > MAX_MPDU_SIZE);
 tx_beacon_cmd->tx.len = cpu_to_le16((u16) frame_size);

 tx_beacon_cmd->tx.rate = rate;
 tx_beacon_cmd->tx.tx_flags =
     (TX_CMD_FLG_SEQ_CTL_MSK | TX_CMD_FLG_TSF_MSK);


 tx_beacon_cmd->tx.supp_rates[0] =
     (IL_OFDM_BASIC_RATES_MASK >> IL_FIRST_OFDM_RATE) & 0xFF;

 tx_beacon_cmd->tx.supp_rates[1] = (IL_CCK_BASIC_RATES_MASK & 0xF);

 return sizeof(struct il3945_tx_beacon_cmd) + frame_size;
}
