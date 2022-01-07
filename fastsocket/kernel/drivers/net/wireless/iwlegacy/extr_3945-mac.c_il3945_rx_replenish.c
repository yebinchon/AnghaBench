
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int lock; } ;


 int GFP_KERNEL ;
 int il3945_rx_allocate (struct il_priv*,int ) ;
 int il3945_rx_queue_restock (struct il_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il3945_rx_replenish(void *data)
{
 struct il_priv *il = data;
 unsigned long flags;

 il3945_rx_allocate(il, GFP_KERNEL);

 spin_lock_irqsave(&il->lock, flags);
 il3945_rx_queue_restock(il);
 spin_unlock_irqrestore(&il->lock, flags);
}
