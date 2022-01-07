
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {scalar_t__ ps_usecount; int ps_flags; int sc_pm_lock; int sc_ah; scalar_t__ ps_enabled; scalar_t__ ps_idle; } ;
struct ath_common {int cc_lock; } ;
typedef enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;


 int ATH9K_PM_FULL_SLEEP ;
 int ATH9K_PM_NETWORK_SLEEP ;
 int PS_WAIT_FOR_ANI ;
 int PS_WAIT_FOR_BEACON ;
 int PS_WAIT_FOR_CAB ;
 int PS_WAIT_FOR_PSPOLL_DATA ;
 int PS_WAIT_FOR_TX_ACK ;
 int ath9k_btcoex_stop_gen_timer (struct ath_softc*) ;
 scalar_t__ ath9k_hw_btcoex_is_enabled (int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_setpower (int ,int) ;
 int ath9k_hw_setrxabort (int ,int) ;
 int ath9k_hw_stopdmarecv (int ,int*) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_ps_restore(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 enum ath9k_power_mode mode;
 unsigned long flags;
 bool reset;

 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 if (--sc->ps_usecount != 0)
  goto unlock;

 if (sc->ps_idle) {
  ath9k_hw_setrxabort(sc->sc_ah, 1);
  ath9k_hw_stopdmarecv(sc->sc_ah, &reset);
  mode = ATH9K_PM_FULL_SLEEP;
 } else if (sc->ps_enabled &&
     !(sc->ps_flags & (PS_WAIT_FOR_BEACON |
         PS_WAIT_FOR_CAB |
         PS_WAIT_FOR_PSPOLL_DATA |
         PS_WAIT_FOR_TX_ACK |
         PS_WAIT_FOR_ANI))) {
  mode = ATH9K_PM_NETWORK_SLEEP;
  if (ath9k_hw_btcoex_is_enabled(sc->sc_ah))
   ath9k_btcoex_stop_gen_timer(sc);
 } else {
  goto unlock;
 }

 spin_lock(&common->cc_lock);
 ath_hw_cycle_counters_update(common);
 spin_unlock(&common->cc_lock);

 ath9k_hw_setpower(sc->sc_ah, mode);

 unlock:
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
}
