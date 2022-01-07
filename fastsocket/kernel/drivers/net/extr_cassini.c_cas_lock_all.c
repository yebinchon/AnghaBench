
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int lock; } ;


 int cas_lock_tx (struct cas*) ;
 int spin_lock_irq (int *) ;

__attribute__((used)) static inline void cas_lock_all(struct cas *cp)
{
 spin_lock_irq(&cp->lock);
 cas_lock_tx(cp);
}
