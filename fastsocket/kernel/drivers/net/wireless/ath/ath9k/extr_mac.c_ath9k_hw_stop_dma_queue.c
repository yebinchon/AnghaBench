
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_Q_TXD ;
 int ATH9K_TIME_QUANTUM ;
 int ATH9K_TX_STOP_DMA_TIMEOUT ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ ath9k_hw_numtxpending (struct ath_hw*,int) ;
 int udelay (int) ;

bool ath9k_hw_stop_dma_queue(struct ath_hw *ah, u32 q)
{


 int wait_time = 1000 / 100;
 int wait;

 REG_WRITE(ah, AR_Q_TXD, 1 << q);

 for (wait = wait_time; wait != 0; wait--) {
  if (wait != wait_time)
   udelay(100);

  if (ath9k_hw_numtxpending(ah, q) == 0)
   break;
 }

 REG_WRITE(ah, AR_Q_TXD, 0);

 return wait != 0;



}
