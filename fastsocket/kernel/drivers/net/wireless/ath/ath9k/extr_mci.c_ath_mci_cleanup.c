
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int MCI ;
 int ar9003_mci_cleanup (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath_mci_cleanup(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_hw *ah = sc->sc_ah;

 ar9003_mci_cleanup(ah);

 ath_dbg(common, MCI, "MCI De-Initialized\n");
}
