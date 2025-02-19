
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int ar9002_hw_attach_ops (struct ath_hw*) ;
 int ar9003_hw_attach_ops (struct ath_hw*) ;

__attribute__((used)) static int ath9k_hw_attach_ops(struct ath_hw *ah)
{
 if (!AR_SREV_9300_20_OR_LATER(ah))
  return ar9002_hw_attach_ops(ah);

 ar9003_hw_attach_ops(ah);
 return 0;
}
