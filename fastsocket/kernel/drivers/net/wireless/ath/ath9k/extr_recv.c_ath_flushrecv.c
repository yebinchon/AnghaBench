
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {TYPE_2__* sc_ah; } ;
struct TYPE_3__ {int hw_caps; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_EDMA ;
 int ath_rx_tasklet (struct ath_softc*,int,int) ;

__attribute__((used)) static void ath_flushrecv(struct ath_softc *sc)
{
 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
  ath_rx_tasklet(sc, 1, 1);
 ath_rx_tasklet(sc, 1, 0);
}
