
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int lock; } ;


 int spin_lock_bh (int *) ;
 int tg3_irq_quiesce (struct tg3*) ;

__attribute__((used)) static inline void tg3_full_lock(struct tg3 *tp, int irq_sync)
{
 spin_lock_bh(&tp->lock);
 if (irq_sync)
  tg3_irq_quiesce(tp);
}
