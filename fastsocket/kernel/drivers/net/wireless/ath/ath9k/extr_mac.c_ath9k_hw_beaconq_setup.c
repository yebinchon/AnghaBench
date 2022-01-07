
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath9k_tx_queue_info {int tqi_aifs; int tqi_qflags; scalar_t__ tqi_cwmax; scalar_t__ tqi_cwmin; } ;
typedef int qi ;


 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_TX_QUEUE_BEACON ;
 int TXQ_FLAG_TXINT_ENABLE ;
 int ath9k_hw_setuptxqueue (struct ath_hw*,int ,struct ath9k_tx_queue_info*) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;

int ath9k_hw_beaconq_setup(struct ath_hw *ah)
{
 struct ath9k_tx_queue_info qi;

 memset(&qi, 0, sizeof(qi));
 qi.tqi_aifs = 1;
 qi.tqi_cwmin = 0;
 qi.tqi_cwmax = 0;

 if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
  qi.tqi_qflags = TXQ_FLAG_TXINT_ENABLE;

 return ath9k_hw_setuptxqueue(ah, ATH9K_TX_QUEUE_BEACON, &qi);
}
