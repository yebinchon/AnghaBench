
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ tx_state; int lock; } ;
struct nvt_dev {TYPE_1__ tx; } ;


 scalar_t__ ST_TX_NONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool nvt_cir_tx_inactive(struct nvt_dev *nvt)
{
 unsigned long flags;
 bool tx_inactive;
 u8 tx_state;

 spin_lock_irqsave(&nvt->tx.lock, flags);
 tx_state = nvt->tx.tx_state;
 spin_unlock_irqrestore(&nvt->tx.lock, flags);

 tx_inactive = (tx_state == ST_TX_NONE);

 return tx_inactive;
}
