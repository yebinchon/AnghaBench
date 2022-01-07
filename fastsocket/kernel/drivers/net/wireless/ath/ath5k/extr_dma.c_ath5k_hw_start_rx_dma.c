
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_CR ;
 int AR5K_CR_RXE ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

void
ath5k_hw_start_rx_dma(struct ath5k_hw *ah)
{
 ath5k_hw_reg_write(ah, AR5K_CR_RXE, AR5K_CR);
 ath5k_hw_reg_read(ah, AR5K_CR);
}
