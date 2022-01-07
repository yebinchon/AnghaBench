
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_softc {int intrstatus; int ps_flags; int sc_pcu_lock; int sc_pm_lock; scalar_t__ ps_enabled; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;
typedef enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;


 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_INT_BB_WATCHDOG ;
 int ATH9K_INT_FATAL ;
 int ATH9K_INT_RX ;
 int ATH9K_INT_RXEOL ;
 int ATH9K_INT_RXHP ;
 int ATH9K_INT_RXLP ;
 int ATH9K_INT_RXORN ;
 int ATH9K_INT_TSFOOR ;
 int ATH9K_INT_TX ;
 int PS ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 int RESET_TYPE_BB_WATCHDOG ;
 int RESET_TYPE_FATAL_INT ;
 int ath9k_btcoex_handle_interrupt (struct ath_softc*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_queue_reset (struct ath_softc*,int) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_rx_tasklet (struct ath_softc*,int ,int) ;
 int ath_tx_edma_tasklet (struct ath_softc*) ;
 int ath_tx_tasklet (struct ath_softc*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_tasklet(unsigned long data)
{
 struct ath_softc *sc = (struct ath_softc *)data;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 enum ath_reset_type type;
 unsigned long flags;
 u32 status = sc->intrstatus;
 u32 rxmask;

 ath9k_ps_wakeup(sc);
 spin_lock(&sc->sc_pcu_lock);

 if ((status & ATH9K_INT_FATAL) ||
     (status & ATH9K_INT_BB_WATCHDOG)) {

  if (status & ATH9K_INT_FATAL)
   type = RESET_TYPE_FATAL_INT;
  else
   type = RESET_TYPE_BB_WATCHDOG;

  ath9k_queue_reset(sc, type);
  goto out;
 }

 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 if ((status & ATH9K_INT_TSFOOR) && sc->ps_enabled) {




  ath_dbg(common, PS, "TSFOOR - Sync with next Beacon\n");
  sc->ps_flags |= PS_WAIT_FOR_BEACON | PS_BEACON_SYNC;
 }
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);

 if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
  rxmask = (ATH9K_INT_RXHP | ATH9K_INT_RXLP | ATH9K_INT_RXEOL |
     ATH9K_INT_RXORN);
 else
  rxmask = (ATH9K_INT_RX | ATH9K_INT_RXEOL | ATH9K_INT_RXORN);

 if (status & rxmask) {

  if ((ah->caps.hw_caps & ATH9K_HW_CAP_EDMA) &&
      (status & ATH9K_INT_RXHP))
   ath_rx_tasklet(sc, 0, 1);

  ath_rx_tasklet(sc, 0, 0);
 }

 if (status & ATH9K_INT_TX) {
  if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
   ath_tx_edma_tasklet(sc);
  else
   ath_tx_tasklet(sc);
 }

 ath9k_btcoex_handle_interrupt(sc, status);

out:

 ath9k_hw_enable_interrupts(ah);

 spin_unlock(&sc->sc_pcu_lock);
 ath9k_ps_restore(sc);
}
