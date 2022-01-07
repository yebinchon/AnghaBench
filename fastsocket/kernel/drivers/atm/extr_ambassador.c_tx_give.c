
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {TYPE_3__* ptr; int limit; int start; } ;
struct TYPE_18__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ high; int lock; int filled; TYPE_2__ in; } ;
struct TYPE_17__ {int flags; TYPE_4__ txq; } ;
typedef TYPE_3__ tx_in ;
typedef TYPE_4__ amb_txq ;
typedef TYPE_3__ amb_dev ;
struct TYPE_15__ {int tx_address; } ;
struct TYPE_14__ {TYPE_1__ adapter; } ;


 int DBG_FLOW ;
 int DBG_TX ;
 int EAGAIN ;
 TYPE_3__* NEXTQ (TYPE_3__*,int ,int ) ;
 int PRINTD (int,char*,TYPE_3__*) ;
 int TX_FRAME ;
 int amb_mem ;
 int dead ;
 int doorbell ;
 TYPE_10__ mb ;
 int offsetof (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int virt_to_bus (TYPE_3__*) ;
 int wr_mem (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int tx_give (amb_dev * dev, tx_in * tx) {
  amb_txq * txq = &dev->txq;
  unsigned long flags;

  PRINTD (DBG_FLOW|DBG_TX, "tx_give %p", dev);

  if (test_bit (dead, &dev->flags))
    return 0;

  spin_lock_irqsave (&txq->lock, flags);

  if (txq->pending < txq->maximum) {
    PRINTD (DBG_TX, "TX in slot %p", txq->in.ptr);

    *txq->in.ptr = *tx;
    txq->pending++;
    txq->in.ptr = NEXTQ (txq->in.ptr, txq->in.start, txq->in.limit);

    wr_mem (dev, offsetof(amb_mem, mb.adapter.tx_address), virt_to_bus (txq->in.ptr));
    wr_mem (dev, offsetof(amb_mem, doorbell), TX_FRAME);

    if (txq->pending > txq->high)
      txq->high = txq->pending;
    spin_unlock_irqrestore (&txq->lock, flags);
    return 0;
  } else {
    txq->filled++;
    spin_unlock_irqrestore (&txq->lock, flags);
    return -EAGAIN;
  }
}
