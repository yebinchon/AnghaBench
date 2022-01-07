
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_EN ;
 int AR_PHY_RX_DELAY ;
 int AR_PHY_RX_DELAY_DELAY ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_synth_delay (struct ath_hw*,struct ath9k_channel*,int) ;

__attribute__((used)) static void ar5008_hw_init_bb(struct ath_hw *ah,
         struct ath9k_channel *chan)
{
 u32 synthDelay;

 synthDelay = REG_READ(ah, AR_PHY_RX_DELAY) & AR_PHY_RX_DELAY_DELAY;

 REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

 ath9k_hw_synth_delay(ah, chan, synthDelay);
}
