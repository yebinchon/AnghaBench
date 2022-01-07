
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;


 int ATH9K_RX_QUEUE_HP ;
 int ATH9K_RX_QUEUE_LP ;
 int ath_rx_remove_buffer (struct ath_softc*,int ) ;

__attribute__((used)) static void ath_edma_stop_recv(struct ath_softc *sc)
{
 ath_rx_remove_buffer(sc, ATH9K_RX_QUEUE_HP);
 ath_rx_remove_buffer(sc, ATH9K_RX_QUEUE_LP);
}
