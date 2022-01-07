
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_hw {int ah_txq_isr_txok_all; int tx_pending; TYPE_1__* txqs; } ;
struct TYPE_2__ {scalar_t__ setup; } ;


 int AR5K_NUM_TX_QUEUES ;
 int BIT (int) ;
 int ath5k_set_current_imask (struct ath5k_hw*) ;
 int ath5k_tx_processq (struct ath5k_hw*,TYPE_1__*) ;

__attribute__((used)) static void
ath5k_tasklet_tx(unsigned long data)
{
 int i;
 struct ath5k_hw *ah = (void *)data;

 for (i = 0; i < AR5K_NUM_TX_QUEUES; i++)
  if (ah->txqs[i].setup && (ah->ah_txq_isr_txok_all & BIT(i)))
   ath5k_tx_processq(ah, &ah->txqs[i]);

 ah->tx_pending = 0;
 ath5k_set_current_imask(ah);
}
