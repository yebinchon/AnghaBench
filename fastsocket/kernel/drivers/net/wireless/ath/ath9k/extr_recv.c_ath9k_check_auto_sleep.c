
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {TYPE_2__* sc_ah; scalar_t__ ps_enabled; } ;
struct TYPE_3__ {int hw_caps; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_AUTOSLEEP ;

__attribute__((used)) static inline bool ath9k_check_auto_sleep(struct ath_softc *sc)
{
 return sc->ps_enabled &&
        (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_AUTOSLEEP);
}
