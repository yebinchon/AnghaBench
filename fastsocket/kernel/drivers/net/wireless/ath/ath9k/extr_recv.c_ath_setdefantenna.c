
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rxotherant; int defant; } ;
struct ath_softc {TYPE_1__ rx; int sc_ah; } ;


 int ath9k_hw_setantenna (int ,int ) ;

__attribute__((used)) static void ath_setdefantenna(struct ath_softc *sc, u32 antenna)
{

 ath9k_hw_setantenna(sc->sc_ah, antenna);
 sc->rx.defant = antenna;
 sc->rx.rxotherant = 0;
}
