
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int rx_chain; } ;
struct TYPE_5__ {int valid_rx_ant; } ;
struct TYPE_4__ {int active_chains; } ;
struct il_priv {TYPE_3__ staging; TYPE_2__ hw_params; TYPE_1__ chain_noise_data; int status; } ;


 int D_ASSOC (char*,int ,int,int) ;
 int IL_NUM_RX_CHAINS_SINGLE ;
 int RXON_RX_CHAIN_CNT_POS ;
 int RXON_RX_CHAIN_MIMO_CNT_POS ;
 int RXON_RX_CHAIN_MIMO_FORCE_MSK ;
 int RXON_RX_CHAIN_VALID_POS ;
 int S_POWER_PMI ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 int il4965_count_chain_bitmap (int) ;
 int il4965_get_active_rx_chain_count (struct il_priv*) ;
 int il4965_get_idle_rx_chain_count (struct il_priv*,int) ;
 int il4965_is_single_rx_stream (struct il_priv*) ;
 int test_bit (int ,int *) ;

void
il4965_set_rxon_chain(struct il_priv *il)
{
 bool is_single = il4965_is_single_rx_stream(il);
 bool is_cam = !test_bit(S_POWER_PMI, &il->status);
 u8 idle_rx_cnt, active_rx_cnt, valid_rx_cnt;
 u32 active_chains;
 u16 rx_chain;





 if (il->chain_noise_data.active_chains)
  active_chains = il->chain_noise_data.active_chains;
 else
  active_chains = il->hw_params.valid_rx_ant;

 rx_chain = active_chains << RXON_RX_CHAIN_VALID_POS;


 active_rx_cnt = il4965_get_active_rx_chain_count(il);
 idle_rx_cnt = il4965_get_idle_rx_chain_count(il, active_rx_cnt);




 valid_rx_cnt = il4965_count_chain_bitmap(active_chains);
 if (valid_rx_cnt < active_rx_cnt)
  active_rx_cnt = valid_rx_cnt;

 if (valid_rx_cnt < idle_rx_cnt)
  idle_rx_cnt = valid_rx_cnt;

 rx_chain |= active_rx_cnt << RXON_RX_CHAIN_MIMO_CNT_POS;
 rx_chain |= idle_rx_cnt << RXON_RX_CHAIN_CNT_POS;

 il->staging.rx_chain = cpu_to_le16(rx_chain);

 if (!is_single && active_rx_cnt >= IL_NUM_RX_CHAINS_SINGLE && is_cam)
  il->staging.rx_chain |= RXON_RX_CHAIN_MIMO_FORCE_MSK;
 else
  il->staging.rx_chain &= ~RXON_RX_CHAIN_MIMO_FORCE_MSK;

 D_ASSOC("rx_chain=0x%X active=%d idle=%d\n", il->staging.rx_chain,
  active_rx_cnt, idle_rx_cnt);

 WARN_ON(active_rx_cnt == 0 || idle_rx_cnt == 0 ||
  active_rx_cnt < idle_rx_cnt);
}
