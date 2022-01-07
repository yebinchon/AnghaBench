
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int mci_work; int sc_ah; int hw_pll_work; int tx_complete_work; int hw_check_work; int paprd_work; } ;


 scalar_t__ ath9k_hw_mci_is_enabled (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void __ath_cancel_work(struct ath_softc *sc)
{
 cancel_work_sync(&sc->paprd_work);
 cancel_work_sync(&sc->hw_check_work);
 cancel_delayed_work_sync(&sc->tx_complete_work);
 cancel_delayed_work_sync(&sc->hw_pll_work);





}
