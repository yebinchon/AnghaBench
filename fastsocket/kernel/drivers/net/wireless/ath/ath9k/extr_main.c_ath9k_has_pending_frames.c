
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_lock; int axq_acq; scalar_t__ axq_depth; } ;
struct ath_softc {int dummy; } ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool ath9k_has_pending_frames(struct ath_softc *sc, struct ath_txq *txq)
{
 bool pending = 0;

 spin_lock_bh(&txq->axq_lock);

 if (txq->axq_depth || !list_empty(&txq->axq_acq))
  pending = 1;

 spin_unlock_bh(&txq->axq_lock);
 return pending;
}
