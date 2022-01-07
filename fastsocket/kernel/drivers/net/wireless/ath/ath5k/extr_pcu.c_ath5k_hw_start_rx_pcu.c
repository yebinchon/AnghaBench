
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_DIAG_SW ;
 int AR5K_DIAG_SW_DIS_RX ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;

void
ath5k_hw_start_rx_pcu(struct ath5k_hw *ah)
{
 AR5K_REG_DISABLE_BITS(ah, AR5K_DIAG_SW, AR5K_DIAG_SW_DIS_RX);
}
