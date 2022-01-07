
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int limit; int start; TYPE_6__* ptr; } ;
struct TYPE_11__ {int lock; TYPE_1__ out; scalar_t__ pending; } ;
typedef TYPE_2__ amb_txq ;
struct TYPE_12__ {TYPE_2__ txq; } ;
typedef TYPE_3__ amb_dev ;
struct TYPE_13__ {scalar_t__ handle; } ;


 int DBG_FLOW ;
 int DBG_TX ;
 TYPE_6__* NEXTQ (TYPE_6__*,int ,int ) ;
 int PRINTD (int,char*,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_complete (TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static int tx_take (amb_dev * dev) {
  amb_txq * txq = &dev->txq;
  unsigned long flags;

  PRINTD (DBG_FLOW|DBG_TX, "tx_take %p", dev);

  spin_lock_irqsave (&txq->lock, flags);

  if (txq->pending && txq->out.ptr->handle) {

    tx_complete (dev, txq->out.ptr);

    txq->out.ptr->handle = 0;

    txq->pending--;
    txq->out.ptr = NEXTQ (txq->out.ptr, txq->out.start, txq->out.limit);

    spin_unlock_irqrestore (&txq->lock, flags);
    return 0;
  } else {

    spin_unlock_irqrestore (&txq->lock, flags);
    return -1;
  }
}
