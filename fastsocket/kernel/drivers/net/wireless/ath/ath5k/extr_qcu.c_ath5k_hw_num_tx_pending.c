
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int q_tx_num; } ;
struct TYPE_5__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_6__ {scalar_t__ tqi_type; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ASSERT_ENTRY (unsigned int,int ) ;
 int AR5K_QCU_STS_FRMPENDCNT ;
 int AR5K_QCU_TXE ;
 int AR5K_QUEUE_STATUS (unsigned int) ;
 scalar_t__ AR5K_REG_READ_Q (struct ath5k_hw*,int ,unsigned int) ;
 scalar_t__ AR5K_TX_QUEUE_INACTIVE ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

u32
ath5k_hw_num_tx_pending(struct ath5k_hw *ah, unsigned int queue)
{
 u32 pending;
 AR5K_ASSERT_ENTRY(queue, ah->ah_capabilities.cap_queues.q_tx_num);


 if (ah->ah_txq[queue].tqi_type == AR5K_TX_QUEUE_INACTIVE)
  return 0;


 if (ah->ah_version == AR5K_AR5210)
  return 0;

 pending = ath5k_hw_reg_read(ah, AR5K_QUEUE_STATUS(queue));
 pending &= AR5K_QCU_STS_FRMPENDCNT;




 if (!pending && AR5K_REG_READ_Q(ah, AR5K_QCU_TXE, queue))
  return 1;

 return pending;
}
