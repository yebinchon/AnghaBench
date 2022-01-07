
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int rxchainmask; } ;
struct ath9k_channel {int dummy; } ;


 int AR9300_MAX_CHAINS ;
 int AR_SREV_9462 (struct ath_hw*) ;
 int AR_SREV_9485 (struct ath_hw*) ;
 int AR_SREV_9565 (struct ath_hw*) ;
 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int ar9003_hw_manual_peak_cal (struct ath_hw*,int,int ) ;

__attribute__((used)) static void ar9003_hw_do_manual_peak_cal(struct ath_hw *ah,
      struct ath9k_channel *chan)
{
 int i;

 if (!AR_SREV_9462(ah) && !AR_SREV_9565(ah) && !AR_SREV_9485(ah))
  return;

 for (i = 0; i < AR9300_MAX_CHAINS; i++) {
  if (!(ah->rxchainmask & (1 << i)))
   continue;
  ar9003_hw_manual_peak_cal(ah, i, IS_CHAN_2GHZ(chan));
 }
}
