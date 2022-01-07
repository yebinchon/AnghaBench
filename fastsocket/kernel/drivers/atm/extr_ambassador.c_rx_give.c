
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int rx_in ;
struct TYPE_10__ {int * ptr; int limit; int start; } ;
struct TYPE_11__ {scalar_t__ pending; scalar_t__ maximum; int lock; TYPE_2__ in; } ;
typedef TYPE_3__ amb_rxq ;
struct TYPE_12__ {TYPE_3__* rxq; } ;
typedef TYPE_4__ amb_dev ;
struct TYPE_9__ {int * rx_address; } ;
struct TYPE_13__ {TYPE_1__ adapter; } ;


 int DBG_FLOW ;
 int DBG_RX ;
 int * NEXTQ (int *,int ,int ) ;
 int PRINTD (int,char*,TYPE_4__*,...) ;
 int amb_mem ;
 TYPE_7__ mb ;
 int offsetof (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_bus (int *) ;
 int wr_mem (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int rx_give (amb_dev * dev, rx_in * rx, unsigned char pool) {
  amb_rxq * rxq = &dev->rxq[pool];
  unsigned long flags;

  PRINTD (DBG_FLOW|DBG_RX, "rx_give %p[%hu]", dev, pool);

  spin_lock_irqsave (&rxq->lock, flags);

  if (rxq->pending < rxq->maximum) {
    PRINTD (DBG_RX, "RX in slot %p", rxq->in.ptr);

    *rxq->in.ptr = *rx;
    rxq->pending++;
    rxq->in.ptr = NEXTQ (rxq->in.ptr, rxq->in.start, rxq->in.limit);

    wr_mem (dev, offsetof(amb_mem, mb.adapter.rx_address[pool]), virt_to_bus (rxq->in.ptr));

    spin_unlock_irqrestore (&rxq->lock, flags);
    return 0;
  } else {
    spin_unlock_irqrestore (&rxq->lock, flags);
    return -1;
  }
}
