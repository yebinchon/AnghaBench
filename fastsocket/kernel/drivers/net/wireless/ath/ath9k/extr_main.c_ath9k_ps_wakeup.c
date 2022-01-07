
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {int ps_usecount; int sc_pm_lock; TYPE_1__* sc_ah; } ;
struct ath_common {int cc_lock; int cc_ani; int cc_survey; } ;
typedef enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;
struct TYPE_3__ {int power_mode; } ;


 int ATH9K_PM_AWAKE ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath9k_hw_setpower (TYPE_1__*,int) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 int memset (int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_ps_wakeup(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 unsigned long flags;
 enum ath9k_power_mode power_mode;

 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 if (++sc->ps_usecount != 1)
  goto unlock;

 power_mode = sc->sc_ah->power_mode;
 ath9k_hw_setpower(sc->sc_ah, ATH9K_PM_AWAKE);






 if (power_mode != ATH9K_PM_AWAKE) {
  spin_lock(&common->cc_lock);
  ath_hw_cycle_counters_update(common);
  memset(&common->cc_survey, 0, sizeof(common->cc_survey));
  memset(&common->cc_ani, 0, sizeof(common->cc_ani));
  spin_unlock(&common->cc_lock);
 }

 unlock:
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
}
