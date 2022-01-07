
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
struct ath5k_hw {scalar_t__ ah_version; int ah_mac_version; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_6__ {int tqi_type; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ASSERT_ENTRY (unsigned int,int ) ;
 int AR5K_BSR ;
 int AR5K_CR ;
 int AR5K_CR_TXD0 ;
 int AR5K_CR_TXD1 ;
 int AR5K_CR_TXE0 ;
 int AR5K_DIAG_SW_5211 ;
 int AR5K_DIAG_SW_CHANNEL_IDLE_HIGH ;
 int AR5K_QCU_MISC_DCU_EARLY ;
 int AR5K_QCU_STS_FRMPENDCNT ;
 int AR5K_QCU_TXD ;
 int AR5K_QCU_TXE ;
 int AR5K_QUEUE_MISC (unsigned int) ;
 int AR5K_QUEUE_STATUS (unsigned int) ;
 int AR5K_QUIET_CTL1 ;
 int AR5K_QUIET_CTL1_NEXT_QT_TSF ;
 int AR5K_QUIET_CTL1_QT_EN ;
 int AR5K_QUIET_CTL2 ;
 int AR5K_QUIET_CTL2_QT_DUR ;
 int AR5K_QUIET_CTL2_QT_PER ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 scalar_t__ AR5K_REG_READ_Q (struct ath5k_hw*,int ,unsigned int) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_Q (struct ath5k_hw*,int ,unsigned int) ;
 int AR5K_SREV_AR2414 ;
 int AR5K_TSF_L32_5211 ;



 int AR5K_TX_QUEUE_INACTIVE ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,unsigned int,...) ;
 int ATH5K_DEBUG_DMA ;
 int EBUSY ;
 int EINVAL ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
ath5k_hw_stop_tx_dma(struct ath5k_hw *ah, unsigned int queue)
{
 unsigned int i = 40;
 u32 tx_queue, pending;

 AR5K_ASSERT_ENTRY(queue, ah->ah_capabilities.cap_queues.q_tx_num);


 if (ah->ah_txq[queue].tqi_type == AR5K_TX_QUEUE_INACTIVE)
  return -EINVAL;

 if (ah->ah_version == AR5K_AR5210) {
  tx_queue = ath5k_hw_reg_read(ah, AR5K_CR);




  switch (ah->ah_txq[queue].tqi_type) {
  case 128:
   tx_queue |= AR5K_CR_TXD0 & ~AR5K_CR_TXE0;
   break;
  case 130:
  case 129:

   tx_queue |= AR5K_CR_TXD1 & ~AR5K_CR_TXD1;
   ath5k_hw_reg_write(ah, 0, AR5K_BSR);
   break;
  default:
   return -EINVAL;
  }


  ath5k_hw_reg_write(ah, tx_queue, AR5K_CR);
  ath5k_hw_reg_read(ah, AR5K_CR);
 } else {





  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_DCU_EARLY);




  AR5K_REG_WRITE_Q(ah, AR5K_QCU_TXD, queue);


  for (i = 1000; i > 0 &&
  (AR5K_REG_READ_Q(ah, AR5K_QCU_TXE, queue) != 0);
  i--)
   udelay(100);

  if (AR5K_REG_READ_Q(ah, AR5K_QCU_TXE, queue))
   ATH5K_DBG(ah, ATH5K_DEBUG_DMA,
    "queue %i didn't stop !\n", queue);


  i = 1000;
  do {
   pending = ath5k_hw_reg_read(ah,
    AR5K_QUEUE_STATUS(queue)) &
    AR5K_QCU_STS_FRMPENDCNT;
   udelay(100);
  } while (--i && pending);



  if (ah->ah_mac_version >= (AR5K_SREV_AR2414 >> 4) &&
      pending) {

   ath5k_hw_reg_write(ah,
    AR5K_REG_SM(100, AR5K_QUIET_CTL2_QT_PER)|
    AR5K_REG_SM(10, AR5K_QUIET_CTL2_QT_DUR),
    AR5K_QUIET_CTL2);


   ath5k_hw_reg_write(ah,
    AR5K_QUIET_CTL1_QT_EN |
    AR5K_REG_SM(ath5k_hw_reg_read(ah,
      AR5K_TSF_L32_5211) >> 10,
      AR5K_QUIET_CTL1_NEXT_QT_TSF),
    AR5K_QUIET_CTL1);


   AR5K_REG_ENABLE_BITS(ah, AR5K_DIAG_SW_5211,
     AR5K_DIAG_SW_CHANNEL_IDLE_HIGH);


   udelay(400);
   AR5K_REG_DISABLE_BITS(ah, AR5K_QUIET_CTL1,
      AR5K_QUIET_CTL1_QT_EN);


   i = 100;
   do {
    pending = ath5k_hw_reg_read(ah,
     AR5K_QUEUE_STATUS(queue)) &
     AR5K_QCU_STS_FRMPENDCNT;
    udelay(100);
   } while (--i && pending);

   AR5K_REG_DISABLE_BITS(ah, AR5K_DIAG_SW_5211,
     AR5K_DIAG_SW_CHANNEL_IDLE_HIGH);

   if (pending)
    ATH5K_DBG(ah, ATH5K_DEBUG_DMA,
     "quiet mechanism didn't work q:%i !\n",
     queue);
  }




  AR5K_REG_DISABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_DCU_EARLY);


  ath5k_hw_reg_write(ah, 0, AR5K_QCU_TXD);
  if (pending) {
   ATH5K_DBG(ah, ATH5K_DEBUG_DMA,
     "tx dma didn't stop (q:%i, frm:%i) !\n",
     queue, pending);
   return -EBUSY;
  }
 }


 return 0;
}
