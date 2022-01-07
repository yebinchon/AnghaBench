
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int q_tx_num; } ;
struct TYPE_5__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {int ah_txq_status; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_6__ {int tqi_type; } ;


 int AR5K_Q_DISABLE_BITS (int ,unsigned int) ;
 int AR5K_TX_QUEUE_INACTIVE ;
 scalar_t__ WARN_ON (int) ;

void
ath5k_hw_release_tx_queue(struct ath5k_hw *ah, unsigned int queue)
{
 if (WARN_ON(queue >= ah->ah_capabilities.cap_queues.q_tx_num))
  return;


 ah->ah_txq[queue].tqi_type = AR5K_TX_QUEUE_INACTIVE;

 AR5K_Q_DISABLE_BITS(ah->ah_txq_status, queue);
}
