
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ rfkill_polarity; int rfkill_gpio; } ;


 scalar_t__ ath9k_hw_gpio_get (struct ath_hw*,int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;

__attribute__((used)) static bool ath_is_rfkill_set(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 bool is_blocked;

 ath9k_ps_wakeup(sc);
 is_blocked = ath9k_hw_gpio_get(ah, ah->rfkill_gpio) ==
      ah->rfkill_polarity;
 ath9k_ps_restore(sc);

 return is_blocked;
}
