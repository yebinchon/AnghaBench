
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_MAC_PCU_ASYNC_FIFO_REG3 ;
 int AR_MAC_PCU_ASYNC_FIFO_REG3_DATAPATH_SEL ;
 int AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_ASYNCFIFO ;
 scalar_t__ AR_SREV_9287_13_OR_LATER (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

void ar9002_hw_enable_async_fifo(struct ath_hw *ah)
{
 if (AR_SREV_9287_13_OR_LATER(ah)) {
  REG_SET_BIT(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
    AR_MAC_PCU_ASYNC_FIFO_REG3_DATAPATH_SEL);
  REG_SET_BIT(ah, AR_PHY_MODE, AR_PHY_MODE_ASYNCFIFO);
  REG_CLR_BIT(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
    AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET);
  REG_SET_BIT(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
    AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET);
 }
}
