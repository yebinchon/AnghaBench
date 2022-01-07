
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int rtt_done; } ;


 int ar9003_hw_rtt_disable (struct ath_hw*) ;
 int ar9003_hw_rtt_enable (struct ath_hw*) ;
 int ar9003_hw_rtt_force_restore (struct ath_hw*) ;
 int ar9003_hw_rtt_load_hist (struct ath_hw*) ;
 int ar9003_hw_rtt_set_mask (struct ath_hw*,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_rfbus_done (struct ath_hw*) ;
 int ath9k_hw_rfbus_req (struct ath_hw*) ;
 int ath_err (int ,char*) ;

bool ar9003_hw_rtt_restore(struct ath_hw *ah, struct ath9k_channel *chan)
{
 bool restore;

 if (!ah->caldata)
  return 0;

 if (!ah->caldata->rtt_done)
  return 0;

 ar9003_hw_rtt_enable(ah);
 ar9003_hw_rtt_set_mask(ah, 0x10);

 if (!ath9k_hw_rfbus_req(ah)) {
  ath_err(ath9k_hw_common(ah), "Could not stop baseband\n");
  restore = 0;
  goto fail;
 }

 ar9003_hw_rtt_load_hist(ah);
 restore = ar9003_hw_rtt_force_restore(ah);

fail:
 ath9k_hw_rfbus_done(ah);
 ar9003_hw_rtt_disable(ah);
 return restore;
}
