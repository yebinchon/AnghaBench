
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int irq; int status; int hw; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ) ;
 int ATH5K_DEBUG_RESET ;
 int ATH_STAT_INVALID ;
 int ath5k_drain_tx_buffs (struct ath5k_hw*) ;
 int ath5k_hw_dma_stop (struct ath5k_hw*) ;
 int ath5k_hw_phy_disable (struct ath5k_hw*) ;
 int ath5k_hw_set_imr (struct ath5k_hw*,int ) ;
 int ath5k_led_off (struct ath5k_hw*) ;
 int ath5k_rx_stop (struct ath5k_hw*) ;
 int ieee80211_stop_queues (int ) ;
 int synchronize_irq (int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int
ath5k_stop_locked(struct ath5k_hw *ah)
{

 ATH5K_DBG(ah, ATH5K_DEBUG_RESET, "invalid %u\n",
   test_bit(ATH_STAT_INVALID, ah->status));
 ieee80211_stop_queues(ah->hw);

 if (!test_bit(ATH_STAT_INVALID, ah->status)) {
  ath5k_led_off(ah);
  ath5k_hw_set_imr(ah, 0);
  synchronize_irq(ah->irq);
  ath5k_rx_stop(ah);
  ath5k_hw_dma_stop(ah);
  ath5k_drain_tx_buffs(ah);
  ath5k_hw_phy_disable(ah);
 }

 return 0;
}
