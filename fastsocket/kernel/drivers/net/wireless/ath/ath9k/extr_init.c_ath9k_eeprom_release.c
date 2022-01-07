
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* sc_ah; } ;
struct TYPE_2__ {int eeprom_blob; } ;


 int release_firmware (int ) ;

__attribute__((used)) static void ath9k_eeprom_release(struct ath_softc *sc)
{
 release_firmware(sc->sc_ah->eeprom_blob);
}
