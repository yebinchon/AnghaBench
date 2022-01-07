
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int limit; int start; TYPE_6__* ptr; } ;
struct TYPE_11__ {scalar_t__ pending; scalar_t__ low; int lock; int emptied; scalar_t__ buffers_wanted; TYPE_1__ out; } ;
typedef TYPE_2__ amb_rxq ;
struct TYPE_12__ {TYPE_2__* rxq; } ;
typedef TYPE_3__ amb_dev ;
struct TYPE_13__ {scalar_t__ length; scalar_t__ status; } ;


 int DBG_FLOW ;
 int DBG_RX ;
 TYPE_6__* NEXTQ (TYPE_6__*,int ,int ) ;
 int PRINTD (int,char*,TYPE_3__*,unsigned char) ;
 int rx_complete (TYPE_3__*,TYPE_6__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rx_take (amb_dev * dev, unsigned char pool) {
  amb_rxq * rxq = &dev->rxq[pool];
  unsigned long flags;

  PRINTD (DBG_FLOW|DBG_RX, "rx_take %p[%hu]", dev, pool);

  spin_lock_irqsave (&rxq->lock, flags);

  if (rxq->pending && (rxq->out.ptr->status || rxq->out.ptr->length)) {

    rx_complete (dev, rxq->out.ptr);

    rxq->out.ptr->status = 0;
    rxq->out.ptr->length = 0;

    rxq->pending--;
    rxq->out.ptr = NEXTQ (rxq->out.ptr, rxq->out.start, rxq->out.limit);

    if (rxq->pending < rxq->low)
      rxq->low = rxq->pending;
    spin_unlock_irqrestore (&rxq->lock, flags);
    return 0;
  } else {
    if (!rxq->pending && rxq->buffers_wanted)
      rxq->emptied++;
    spin_unlock_irqrestore (&rxq->lock, flags);
    return -1;
  }
}
