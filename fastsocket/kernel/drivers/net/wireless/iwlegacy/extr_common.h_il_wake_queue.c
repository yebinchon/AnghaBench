
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_tx_queue {int swq_id; } ;
struct il_priv {int hw; int * queue_stop_count; int queue_stopped; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int ieee80211_wake_queue (int ,int) ;
 scalar_t__ test_and_clear_bit (int,int ) ;

__attribute__((used)) static inline void
il_wake_queue(struct il_priv *il, struct il_tx_queue *txq)
{
 u8 queue = txq->swq_id;
 u8 ac = queue & 3;
 u8 hwq = (queue >> 2) & 0x1f;

 if (test_and_clear_bit(hwq, il->queue_stopped))
  if (atomic_dec_return(&il->queue_stop_count[ac]) <= 0)
   ieee80211_wake_queue(il->hw, ac);
}
