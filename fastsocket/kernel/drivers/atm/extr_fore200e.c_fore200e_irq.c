
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int q_lock; } ;


 int fore200e_rx_irq (struct fore200e*) ;
 int fore200e_tx_irq (struct fore200e*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fore200e_irq(struct fore200e* fore200e)
{
    unsigned long flags;

    spin_lock_irqsave(&fore200e->q_lock, flags);
    fore200e_rx_irq(fore200e);
    spin_unlock_irqrestore(&fore200e->q_lock, flags);

    spin_lock_irqsave(&fore200e->q_lock, flags);
    fore200e_tx_irq(fore200e);
    spin_unlock_irqrestore(&fore200e->q_lock, flags);
}
