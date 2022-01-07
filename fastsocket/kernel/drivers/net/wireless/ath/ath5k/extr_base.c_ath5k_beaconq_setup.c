
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_txq_info {int tqi_flags; int tqi_cw_max; int tqi_cw_min; int tqi_aifs; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_TUNE_AIFS ;
 int AR5K_TUNE_CWMAX ;
 int AR5K_TUNE_CWMIN ;
 int AR5K_TXQ_FLAG_TXDESCINT_ENABLE ;
 int AR5K_TX_QUEUE_BEACON ;
 int ath5k_hw_setup_tx_queue (struct ath5k_hw*,int ,struct ath5k_txq_info*) ;

__attribute__((used)) static int
ath5k_beaconq_setup(struct ath5k_hw *ah)
{
 struct ath5k_txq_info qi = {


  .tqi_aifs = AR5K_TUNE_AIFS,
  .tqi_cw_min = AR5K_TUNE_CWMIN,
  .tqi_cw_max = AR5K_TUNE_CWMAX,

  .tqi_flags = AR5K_TXQ_FLAG_TXDESCINT_ENABLE
 };

 return ath5k_hw_setup_tx_queue(ah, AR5K_TX_QUEUE_BEACON, &qi);
}
