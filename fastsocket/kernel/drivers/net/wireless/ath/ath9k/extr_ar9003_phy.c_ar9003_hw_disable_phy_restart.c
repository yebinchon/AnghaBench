
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int bb_hang_rx_ofdm; int bb_watchdog_last_status; } ;


 int AR_PHY_RESTART ;
 int AR_PHY_RESTART_ENA ;
 int AR_PHY_WATCHDOG_RX_OFDM_SM ;
 int MS (int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ar9003_hw_disable_phy_restart(struct ath_hw *ah)
{
 u32 val;






 if (!((MS(ah->bb_watchdog_last_status,
    AR_PHY_WATCHDOG_RX_OFDM_SM) == 0xb) ||
     ah->bb_hang_rx_ofdm))
  return;

 ah->bb_hang_rx_ofdm = 1;
 val = REG_READ(ah, AR_PHY_RESTART);
 val &= ~AR_PHY_RESTART_ENA;

 REG_WRITE(ah, AR_PHY_RESTART, val);
}
