
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {scalar_t__ intr_txqs; } ;


 int AR_DQCUMASK (int) ;
 int AR_NUM_DCU ;
 int ATH9K_NUM_TX_QUEUES ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_resettxqueue (struct ath_hw*,int) ;

__attribute__((used)) static void ath9k_hw_init_queues(struct ath_hw *ah)
{
 int i;

 ENABLE_REGWRITE_BUFFER(ah);

 for (i = 0; i < AR_NUM_DCU; i++)
  REG_WRITE(ah, AR_DQCUMASK(i), 1 << i);

 REGWRITE_BUFFER_FLUSH(ah);

 ah->intr_txqs = 0;
 for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++)
  ath9k_hw_resettxqueue(ah, i);
}
