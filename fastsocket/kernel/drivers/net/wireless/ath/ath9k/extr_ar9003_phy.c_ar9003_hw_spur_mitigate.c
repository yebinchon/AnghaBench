
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_SREV_9565 (struct ath_hw*) ;
 int ar9003_hw_spur_mitigate_mrc_cck (struct ath_hw*,struct ath9k_channel*) ;
 int ar9003_hw_spur_mitigate_ofdm (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static void ar9003_hw_spur_mitigate(struct ath_hw *ah,
        struct ath9k_channel *chan)
{
 if (!AR_SREV_9565(ah))
  ar9003_hw_spur_mitigate_mrc_cck(ah, chan);
 ar9003_hw_spur_mitigate_ofdm(ah, chan);
}
