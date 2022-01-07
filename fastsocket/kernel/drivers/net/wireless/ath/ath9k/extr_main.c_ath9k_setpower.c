
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_pm_lock; int sc_ah; } ;
typedef enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;


 int ath9k_hw_setpower (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool ath9k_setpower(struct ath_softc *sc, enum ath9k_power_mode mode)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 ret = ath9k_hw_setpower(sc->sc_ah, mode);
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);

 return ret;
}
