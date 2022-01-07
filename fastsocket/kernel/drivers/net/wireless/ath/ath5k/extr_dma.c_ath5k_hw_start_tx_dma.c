
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int q_tx_num; } ;
struct TYPE_5__ {TYPE_3__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; TYPE_1__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_4__ {int tqi_type; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ASSERT_ENTRY (unsigned int,int ) ;
 int AR5K_BCR_BDMAE ;
 int AR5K_BCR_TQ1FV ;
 int AR5K_BCR_TQ1V ;
 int AR5K_BSR ;
 int AR5K_CR ;
 int AR5K_CR_TXD0 ;
 int AR5K_CR_TXD1 ;
 int AR5K_CR_TXE0 ;
 int AR5K_CR_TXE1 ;
 int AR5K_QCU_TXD ;
 int AR5K_QCU_TXE ;
 scalar_t__ AR5K_REG_READ_Q (struct ath5k_hw*,int ,unsigned int) ;
 int AR5K_REG_WRITE_Q (struct ath5k_hw*,int ,unsigned int) ;



 int AR5K_TX_QUEUE_INACTIVE ;
 int EINVAL ;
 int EIO ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

int
ath5k_hw_start_tx_dma(struct ath5k_hw *ah, unsigned int queue)
{
 u32 tx_queue;

 AR5K_ASSERT_ENTRY(queue, ah->ah_capabilities.cap_queues.q_tx_num);


 if (ah->ah_txq[queue].tqi_type == AR5K_TX_QUEUE_INACTIVE)
  return -EINVAL;

 if (ah->ah_version == AR5K_AR5210) {
  tx_queue = ath5k_hw_reg_read(ah, AR5K_CR);




  switch (ah->ah_txq[queue].tqi_type) {
  case 128:
   tx_queue |= AR5K_CR_TXE0 & ~AR5K_CR_TXD0;
   break;
  case 130:
   tx_queue |= AR5K_CR_TXE1 & ~AR5K_CR_TXD1;
   ath5k_hw_reg_write(ah, AR5K_BCR_TQ1V | AR5K_BCR_BDMAE,
     AR5K_BSR);
   break;
  case 129:
   tx_queue |= AR5K_CR_TXE1 & ~AR5K_CR_TXD1;
   ath5k_hw_reg_write(ah, AR5K_BCR_TQ1FV | AR5K_BCR_TQ1V |
    AR5K_BCR_BDMAE, AR5K_BSR);
   break;
  default:
   return -EINVAL;
  }

  ath5k_hw_reg_write(ah, tx_queue, AR5K_CR);
  ath5k_hw_reg_read(ah, AR5K_CR);
 } else {

  if (AR5K_REG_READ_Q(ah, AR5K_QCU_TXD, queue))
   return -EIO;


  AR5K_REG_WRITE_Q(ah, AR5K_QCU_TXE, queue);
 }

 return 0;
}
