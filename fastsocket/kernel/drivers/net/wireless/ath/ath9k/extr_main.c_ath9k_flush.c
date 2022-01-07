
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {int * txq; } ;
struct ath_softc {int mutex; int tx_complete_work; int sc_pcu_lock; TYPE_1__ tx; int sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int dummy; } ;


 int AH_UNPLUGGED ;
 int ANY ;
 int ATH9K_NUM_TX_QUEUES ;
 int ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int SC_OP_INVALID ;
 int ath9k_has_pending_frames (struct ath_softc*,int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_drain_all_txq (struct ath_softc*) ;
 int ath_reset (struct ath_softc*) ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ath9k_flush(struct ieee80211_hw *hw, u32 queues, bool drop)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 int timeout = 200;
 int i, j;
 bool drain_txq;

 mutex_lock(&sc->mutex);
 cancel_delayed_work_sync(&sc->tx_complete_work);

 if (ah->ah_flags & AH_UNPLUGGED) {
  ath_dbg(common, ANY, "Device has been unplugged!\n");
  mutex_unlock(&sc->mutex);
  return;
 }

 if (test_bit(SC_OP_INVALID, &sc->sc_flags)) {
  ath_dbg(common, ANY, "Device not present\n");
  mutex_unlock(&sc->mutex);
  return;
 }

 for (j = 0; j < timeout; j++) {
  bool npend = 0;

  if (j)
   usleep_range(1000, 2000);

  for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++) {
   if (!ATH_TXQ_SETUP(sc, i))
    continue;

   npend = ath9k_has_pending_frames(sc, &sc->tx.txq[i]);

   if (npend)
    break;
  }

  if (!npend)
      break;
 }

 if (drop) {
  ath9k_ps_wakeup(sc);
  spin_lock_bh(&sc->sc_pcu_lock);
  drain_txq = ath_drain_all_txq(sc);
  spin_unlock_bh(&sc->sc_pcu_lock);

  if (!drain_txq)
   ath_reset(sc);

  ath9k_ps_restore(sc);
  ieee80211_wake_queues(hw);
 }

 ieee80211_queue_delayed_work(hw, &sc->tx_complete_work, 0);
 mutex_unlock(&sc->mutex);
}
