
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {TYPE_1__* txqs; } ;
struct TYPE_2__ {int txq_max; } ;


 size_t AR5K_TX_QUEUE_ID_DATA_MIN ;
 int ATH5K_TXQ_LEN_MAX ;
 int ATH_RXBUF ;

__attribute__((used)) static void ath5k_get_ringparam(struct ieee80211_hw *hw,
    u32 *tx, u32 *tx_max, u32 *rx, u32 *rx_max)
{
 struct ath5k_hw *ah = hw->priv;

 *tx = ah->txqs[AR5K_TX_QUEUE_ID_DATA_MIN].txq_max;

 *tx_max = ATH5K_TXQ_LEN_MAX;
 *rx = *rx_max = ATH_RXBUF;
}
