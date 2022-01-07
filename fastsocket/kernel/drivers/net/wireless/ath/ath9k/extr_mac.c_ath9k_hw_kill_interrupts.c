
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AR_IER ;
 int AR_IER_DISABLE ;
 int AR_INTR_ASYNC_ENABLE ;
 int AR_INTR_SYNC_ENABLE ;
 int AR_SREV_9100 (struct ath_hw*) ;
 int INTERRUPT ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_hw_kill_interrupts(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 ath_dbg(common, INTERRUPT, "disable IER\n");
 REG_WRITE(ah, AR_IER, AR_IER_DISABLE);
 (void) REG_READ(ah, AR_IER);
 if (!AR_SREV_9100(ah)) {
  REG_WRITE(ah, AR_INTR_ASYNC_ENABLE, 0);
  (void) REG_READ(ah, AR_INTR_ASYNC_ENABLE);

  REG_WRITE(ah, AR_INTR_SYNC_ENABLE, 0);
  (void) REG_READ(ah, AR_INTR_SYNC_ENABLE);
 }
}
