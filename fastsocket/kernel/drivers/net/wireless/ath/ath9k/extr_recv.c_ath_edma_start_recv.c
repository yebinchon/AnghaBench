
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {TYPE_2__* hw; int sc_ah; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int ATH9K_RX_QUEUE_HP ;
 int ATH9K_RX_QUEUE_LP ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int ath9k_hw_rxena (int ) ;
 int ath9k_hw_startpcureceive (int ,int) ;
 int ath_opmode_init (struct ath_softc*) ;
 int ath_rx_addbuffer_edma (struct ath_softc*,int ) ;

__attribute__((used)) static void ath_edma_start_recv(struct ath_softc *sc)
{
 ath9k_hw_rxena(sc->sc_ah);
 ath_rx_addbuffer_edma(sc, ATH9K_RX_QUEUE_HP);
 ath_rx_addbuffer_edma(sc, ATH9K_RX_QUEUE_LP);
 ath_opmode_init(sc);
 ath9k_hw_startpcureceive(sc->sc_ah, !!(sc->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL));
}
