
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ipath_verbs_txreq {TYPE_1__ txreq; } ;
struct ipath_ibdev {int pending_lock; int txreq_free; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void put_txreq(struct ipath_ibdev *dev,
        struct ipath_verbs_txreq *tx)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->pending_lock, flags);
 list_add(&tx->txreq.list, &dev->txreq_free);
 spin_unlock_irqrestore(&dev->pending_lock, flags);
}
